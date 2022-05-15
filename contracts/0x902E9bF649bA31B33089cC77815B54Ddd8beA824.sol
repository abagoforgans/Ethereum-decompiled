contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4;
address stor4; offset 8

function _fallback() payable {
    stor0 = 24 * 3600
    stor1 = 1
    stor2 = 10000
    stor3 = 5000
    uint8(stor4.field_0) = 0
    address(stor4.field_8) = 0x2aaae414348ede8fb28731bb0784d151197883a8
    require not msg.value
    return code.data[92 len 2568]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint256 EGGS_TO_HATCH_1SHRIMP;
uint256 STARTING_SHRIMP;
uint256 stor2;
uint256 stor3;
uint8 stor4;
address ceoAddress; offset 8
mapping of uint256 hatcheryShrimp;
mapping of uint256 claimedEggs;
mapping of uint256 lastHatch;
mapping of address referrals;
uint256 marketEggs;

function ceoAddress() {
    return ceoAddress
}

function initialized() {
    return bool(stor4)
}

function marketEggs() {
    return marketEggs
}

function lastHatch(address arg1) {
    return lastHatch[arg1]
}

function claimedEggs(address arg1) {
    return claimedEggs[arg1]
}

function EGGS_TO_HATCH_1SHRIMP() {
    return EGGS_TO_HATCH_1SHRIMP
}

function hatcheryShrimp(address arg1) {
    return hatcheryShrimp[arg1]
}

function referrals(address arg1) {
    return referrals[arg1]
}

function getMyShrimp() {
    return hatcheryShrimp[address(msg.sender)]
}

function STARTING_SHRIMP() {
    return STARTING_SHRIMP
}

function _fallback() payable {
    revert
}

function MiningRigFarmer() {
    ceoAddress = msg.sender
}

function seedMarket(uint256 arg1) payable {
    require not marketEggs
    stor4 = 1
    marketEggs = arg1
}

function devFee(uint256 arg1) {
    if not arg1:
        return 0
    require 4 * arg1 / arg1 == 4
    return (4 * arg1 / 100)
}

function getFreeShrimp() {
    require stor4
    require not hatcheryShrimp[address(msg.sender)]
    lastHatch[address(msg.sender)] = block.timestamp
    hatcheryShrimp[address(msg.sender)] = STARTING_SHRIMP
}

function getEggsSinceLastHatch(address arg1) {
    require lastHatch[address(arg1)] <= block.timestamp
    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(arg1)]:
        if not EGGS_TO_HATCH_1SHRIMP:
            return 0
        if hatcheryShrimp[address(arg1)] * EGGS_TO_HATCH_1SHRIMP / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(arg1)]:
            return (hatcheryShrimp[address(arg1)] * EGGS_TO_HATCH_1SHRIMP)
    else:
        if not block.timestamp - lastHatch[address(arg1)]:
            return 0
        if (block.timestamp * hatcheryShrimp[address(arg1)]) - (lastHatch[address(arg1)] * hatcheryShrimp[address(arg1)]) / block.timestamp - lastHatch[address(arg1)] == hatcheryShrimp[address(arg1)]:
            return ((block.timestamp * hatcheryShrimp[address(arg1)]) - (lastHatch[address(arg1)] * hatcheryShrimp[address(arg1)]))
    revert
}

function getMyEggs() {
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1SHRIMP:
            if claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]:
                return claimedEggs[address(msg.sender)]
        else:
            if hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]:
                if (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]:
                    return ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)])
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            if claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]:
                return claimedEggs[address(msg.sender)]
        else:
            if (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]:
                if (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]:
                    return ((block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)])
    revert
}

function calculateTrade(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not stor2:
        if not stor3:
            if arg1:
                if (0 / arg1) + stor3 >= stor3:
                    if (0 / arg1) + stor3:
                        return (0 / (0 / arg1) + stor3)
        else:
            if arg1 * stor3 / stor3 == arg1:
                if arg1 * stor3 >= 0:
                    if arg1:
                        if (arg1 * stor3 / arg1) + stor3 >= stor3:
                            if (arg1 * stor3 / arg1) + stor3:
                                return (0 / (arg1 * stor3 / arg1) + stor3)
    else:
        if arg3 * stor2 / stor2 == arg3:
            if not stor2:
                if not stor3:
                    if arg1:
                        if (0 / arg1) + stor3 >= stor3:
                            if (0 / arg1) + stor3:
                                return (arg3 * stor2 / (0 / arg1) + stor3)
                else:
                    if arg1 * stor3 / stor3 == arg1:
                        if arg1 * stor3 >= 0:
                            if arg1:
                                if (arg1 * stor3 / arg1) + stor3 >= stor3:
                                    if (arg1 * stor3 / arg1) + stor3:
                                        return (arg3 * stor2 / (arg1 * stor3 / arg1) + stor3)
            else:
                if arg2 * stor2 / stor2 == arg2:
                    if not stor3:
                        if arg2 * stor2 >= arg2 * stor2:
                            if arg1:
                                if (arg2 * stor2 / arg1) + stor3 >= stor3:
                                    if (arg2 * stor2 / arg1) + stor3:
                                        return (arg3 * stor2 / (arg2 * stor2 / arg1) + stor3)
                    else:
                        if arg1 * stor3 / stor3 == arg1:
                            if (arg1 * stor3) + (arg2 * stor2) >= arg2 * stor2:
                                if arg1:
                                    if ((arg1 * stor3) + (arg2 * stor2) / arg1) + stor3 >= stor3:
                                        if ((arg1 * stor3) + (arg2 * stor2) / arg1) + stor3:
                                            return (arg3 * stor2 / ((arg1 * stor3) + (arg2 * stor2) / arg1) + stor3)
    revert
}

function calculateEggBuy(uint256 arg1, uint256 arg2) {
    if not stor2:
        if not stor3:
            if arg1:
                if (0 / arg1) + stor3 >= stor3:
                    if (0 / arg1) + stor3:
                        return (0 / (0 / arg1) + stor3)
        else:
            if arg1 * stor3 / stor3 == arg1:
                if arg1 * stor3 >= 0:
                    if arg1:
                        if (arg1 * stor3 / arg1) + stor3 >= stor3:
                            if (arg1 * stor3 / arg1) + stor3:
                                return (0 / (arg1 * stor3 / arg1) + stor3)
    else:
        if marketEggs * stor2 / stor2 == marketEggs:
            if not stor2:
                if not stor3:
                    if arg1:
                        if (0 / arg1) + stor3 >= stor3:
                            if (0 / arg1) + stor3:
                                return (marketEggs * stor2 / (0 / arg1) + stor3)
                else:
                    if arg1 * stor3 / stor3 == arg1:
                        if arg1 * stor3 >= 0:
                            if arg1:
                                if (arg1 * stor3 / arg1) + stor3 >= stor3:
                                    if (arg1 * stor3 / arg1) + stor3:
                                        return (marketEggs * stor2 / (arg1 * stor3 / arg1) + stor3)
            else:
                if arg2 * stor2 / stor2 == arg2:
                    if not stor3:
                        if arg2 * stor2 >= arg2 * stor2:
                            if arg1:
                                if (arg2 * stor2 / arg1) + stor3 >= stor3:
                                    if (arg2 * stor2 / arg1) + stor3:
                                        return (marketEggs * stor2 / (arg2 * stor2 / arg1) + stor3)
                    else:
                        if arg1 * stor3 / stor3 == arg1:
                            if (arg1 * stor3) + (arg2 * stor2) >= arg2 * stor2:
                                if arg1:
                                    if ((arg1 * stor3) + (arg2 * stor2) / arg1) + stor3 >= stor3:
                                        if ((arg1 * stor3) + (arg2 * stor2) / arg1) + stor3:
                                            return (marketEggs * stor2 / ((arg1 * stor3) + (arg2 * stor2) / arg1) + stor3)
    revert
}

function calculateEggSell(uint256 arg1) {
    if not stor2:
        if not stor3:
            if arg1:
                if (0 / arg1) + stor3 >= stor3:
                    if (0 / arg1) + stor3:
                        return (0 / (0 / arg1) + stor3)
        else:
            if arg1 * stor3 / stor3 == arg1:
                if arg1 * stor3 >= 0:
                    if arg1:
                        if (arg1 * stor3 / arg1) + stor3 >= stor3:
                            if (arg1 * stor3 / arg1) + stor3:
                                return (0 / (arg1 * stor3 / arg1) + stor3)
    else:
        if eth.balance(this.address) * stor2 / stor2 == eth.balance(this.address):
            if not stor2:
                if not stor3:
                    if arg1:
                        if (0 / arg1) + stor3 >= stor3:
                            if (0 / arg1) + stor3:
                                return (eth.balance(this.address) * stor2 / (0 / arg1) + stor3)
                else:
                    if arg1 * stor3 / stor3 == arg1:
                        if arg1 * stor3 >= 0:
                            if arg1:
                                if (arg1 * stor3 / arg1) + stor3 >= stor3:
                                    if (arg1 * stor3 / arg1) + stor3:
                                        return (eth.balance(this.address) * stor2 / (arg1 * stor3 / arg1) + stor3)
            else:
                if marketEggs * stor2 / stor2 == marketEggs:
                    if not stor3:
                        if marketEggs * stor2 >= marketEggs * stor2:
                            if arg1:
                                if (marketEggs * stor2 / arg1) + stor3 >= stor3:
                                    if (marketEggs * stor2 / arg1) + stor3:
                                        return (eth.balance(this.address) * stor2 / (marketEggs * stor2 / arg1) + stor3)
                    else:
                        if arg1 * stor3 / stor3 == arg1:
                            if (arg1 * stor3) + (marketEggs * stor2) >= marketEggs * stor2:
                                if arg1:
                                    if ((arg1 * stor3) + (marketEggs * stor2) / arg1) + stor3 >= stor3:
                                        if ((arg1 * stor3) + (marketEggs * stor2) / arg1) + stor3:
                                            return (eth.balance(this.address) * stor2 / ((arg1 * stor3) + (marketEggs * stor2) / arg1) + stor3)
    revert
}

function calculateEggBuySimple(uint256 arg1) {
    if not stor2:
        if not stor3:
            if arg1:
                if (0 / arg1) + stor3 >= stor3:
                    if (0 / arg1) + stor3:
                        return (0 / (0 / arg1) + stor3)
        else:
            if arg1 * stor3 / stor3 == arg1:
                if arg1 * stor3 >= 0:
                    if arg1:
                        if (arg1 * stor3 / arg1) + stor3 >= stor3:
                            if (arg1 * stor3 / arg1) + stor3:
                                return (0 / (arg1 * stor3 / arg1) + stor3)
    else:
        if marketEggs * stor2 / stor2 == marketEggs:
            if not stor2:
                if not stor3:
                    if arg1:
                        if (0 / arg1) + stor3 >= stor3:
                            if (0 / arg1) + stor3:
                                return (marketEggs * stor2 / (0 / arg1) + stor3)
                else:
                    if arg1 * stor3 / stor3 == arg1:
                        if arg1 * stor3 >= 0:
                            if arg1:
                                if (arg1 * stor3 / arg1) + stor3 >= stor3:
                                    if (arg1 * stor3 / arg1) + stor3:
                                        return (marketEggs * stor2 / (arg1 * stor3 / arg1) + stor3)
            else:
                if eth.balance(this.address) * stor2 / stor2 == eth.balance(this.address):
                    if not stor3:
                        if eth.balance(this.address) * stor2 >= eth.balance(this.address) * stor2:
                            if arg1:
                                if (eth.balance(this.address) * stor2 / arg1) + stor3 >= stor3:
                                    if (eth.balance(this.address) * stor2 / arg1) + stor3:
                                        return (marketEggs * stor2 / (eth.balance(this.address) * stor2 / arg1) + stor3)
                    else:
                        if arg1 * stor3 / stor3 == arg1:
                            if (arg1 * stor3) + (eth.balance(this.address) * stor2) >= eth.balance(this.address) * stor2:
                                if arg1:
                                    if ((arg1 * stor3) + (eth.balance(this.address) * stor2) / arg1) + stor3 >= stor3:
                                        if ((arg1 * stor3) + (eth.balance(this.address) * stor2) / arg1) + stor3:
                                            return (marketEggs * stor2 / ((arg1 * stor3) + (eth.balance(this.address) * stor2) / arg1) + stor3)
    revert
}

function hatchEggs(address arg1) {
    require stor4
    if not referrals[address(msg.sender)]:
        if referrals[address(msg.sender)] != msg.sender:
            referrals[address(msg.sender)] = arg1
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1SHRIMP:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1SHRIMP
            require (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) + hatcheryShrimp[address(msg.sender)] >= hatcheryShrimp[address(msg.sender)]
            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require (claimedEggs[address(msg.sender)] / 5) + claimedEggs[stor8[address(msg.sender)]] >= claimedEggs[stor8[address(msg.sender)]]
            claimedEggs[stor8[address(msg.sender)]] += claimedEggs[address(msg.sender)] / 5
            require (claimedEggs[address(msg.sender)] / 10) + marketEggs >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] / 10
        else:
            require hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
            require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1SHRIMP
            require ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) + hatcheryShrimp[address(msg.sender)] >= hatcheryShrimp[address(msg.sender)]
            hatcheryShrimp[address(msg.sender)] += (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] / 5) + claimedEggs[stor8[address(msg.sender)]] >= claimedEggs[stor8[address(msg.sender)]]
            claimedEggs[stor8[address(msg.sender)]] += (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] / 5
            require ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] / 10) + marketEggs >= marketEggs
            marketEggs += (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] / 10
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1SHRIMP
            require (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) + hatcheryShrimp[address(msg.sender)] >= hatcheryShrimp[address(msg.sender)]
            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require (claimedEggs[address(msg.sender)] / 5) + claimedEggs[stor8[address(msg.sender)]] >= claimedEggs[stor8[address(msg.sender)]]
            claimedEggs[stor8[address(msg.sender)]] += claimedEggs[address(msg.sender)] / 5
            require (claimedEggs[address(msg.sender)] / 10) + marketEggs >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] / 10
        else:
            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1SHRIMP
            require ((block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) + hatcheryShrimp[address(msg.sender)] >= hatcheryShrimp[address(msg.sender)]
            hatcheryShrimp[address(msg.sender)] += (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require ((block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] / 5) + claimedEggs[stor8[address(msg.sender)]] >= claimedEggs[stor8[address(msg.sender)]]
            claimedEggs[stor8[address(msg.sender)]] += (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] / 5
            require ((block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] / 10) + marketEggs >= marketEggs
            marketEggs += (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] / 10
}

function buyEggs() payable {
    require stor4
    require msg.value <= eth.balance(this.address)
    if not stor2:
        if not stor3:
            require msg.value
            require (0 / msg.value) + stor3 >= stor3
            require (0 / msg.value) + stor3
            if not 0 / (0 / msg.value) + stor3:
                require 0 <= 0 / (0 / msg.value) + stor3
                if not msg.value:
                    call ceoAddress with:
                         gas 2300 wei
                else:
                    require 4 * msg.value / msg.value == 4
                    call ceoAddress with:
                       value 4 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                require ext_call.success
                require (0 / (0 / msg.value) + stor3) + claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                claimedEggs[address(msg.sender)] += 0 / (0 / msg.value) + stor3
            else:
                require 4 * 0 / (0 / msg.value) + stor3 / 0 / (0 / msg.value) + stor3 == 4
                require 4 * 0 / (0 / msg.value) + stor3 / 100 <= 0 / (0 / msg.value) + stor3
                if not msg.value:
                    call ceoAddress with:
                         gas 2300 wei
                else:
                    require 4 * msg.value / msg.value == 4
                    call ceoAddress with:
                       value 4 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                require ext_call.success
                require (0 / (0 / msg.value) + stor3) - (4 * 0 / (0 / msg.value) + stor3 / 100) + claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                claimedEggs[address(msg.sender)] = (0 / (0 / msg.value) + stor3) - (4 * 0 / (0 / msg.value) + stor3 / 100) + claimedEggs[address(msg.sender)]
        else:
            require msg.value * stor3 / stor3 == msg.value
            require msg.value * stor3 >= 0
            require msg.value
            require (msg.value * stor3 / msg.value) + stor3 >= stor3
            require (msg.value * stor3 / msg.value) + stor3
            if not 0 / (msg.value * stor3 / msg.value) + stor3:
                require 0 <= 0 / (msg.value * stor3 / msg.value) + stor3
                if not msg.value:
                    call ceoAddress with:
                         gas 2300 wei
                else:
                    require 4 * msg.value / msg.value == 4
                    call ceoAddress with:
                       value 4 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                require ext_call.success
                require (0 / (msg.value * stor3 / msg.value) + stor3) + claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                claimedEggs[address(msg.sender)] += 0 / (msg.value * stor3 / msg.value) + stor3
            else:
                require 4 * 0 / (msg.value * stor3 / msg.value) + stor3 / 0 / (msg.value * stor3 / msg.value) + stor3 == 4
                require 4 * 0 / (msg.value * stor3 / msg.value) + stor3 / 100 <= 0 / (msg.value * stor3 / msg.value) + stor3
                if not msg.value:
                    call ceoAddress with:
                         gas 2300 wei
                else:
                    require 4 * msg.value / msg.value == 4
                    call ceoAddress with:
                       value 4 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                require ext_call.success
                require (0 / (msg.value * stor3 / msg.value) + stor3) - (4 * 0 / (msg.value * stor3 / msg.value) + stor3 / 100) + claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                claimedEggs[address(msg.sender)] = (0 / (msg.value * stor3 / msg.value) + stor3) - (4 * 0 / (msg.value * stor3 / msg.value) + stor3 / 100) + claimedEggs[address(msg.sender)]
    else:
        require marketEggs * stor2 / stor2 == marketEggs
        if not stor2:
            if not stor3:
                require msg.value
                require (0 / msg.value) + stor3 >= stor3
                require (0 / msg.value) + stor3
                if not marketEggs * stor2 / (0 / msg.value) + stor3:
                    require 0 <= marketEggs * stor2 / (0 / msg.value) + stor3
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (marketEggs * stor2 / (0 / msg.value) + stor3) + claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] += marketEggs * stor2 / (0 / msg.value) + stor3
                else:
                    require 4 * marketEggs * stor2 / (0 / msg.value) + stor3 / marketEggs * stor2 / (0 / msg.value) + stor3 == 4
                    require 4 * marketEggs * stor2 / (0 / msg.value) + stor3 / 100 <= marketEggs * stor2 / (0 / msg.value) + stor3
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (marketEggs * stor2 / (0 / msg.value) + stor3) - (4 * marketEggs * stor2 / (0 / msg.value) + stor3 / 100) + claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = (marketEggs * stor2 / (0 / msg.value) + stor3) - (4 * marketEggs * stor2 / (0 / msg.value) + stor3 / 100) + claimedEggs[address(msg.sender)]
            else:
                require msg.value * stor3 / stor3 == msg.value
                require msg.value * stor3 >= 0
                require msg.value
                require (msg.value * stor3 / msg.value) + stor3 >= stor3
                require (msg.value * stor3 / msg.value) + stor3
                if not marketEggs * stor2 / (msg.value * stor3 / msg.value) + stor3:
                    require 0 <= marketEggs * stor2 / (msg.value * stor3 / msg.value) + stor3
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (marketEggs * stor2 / (msg.value * stor3 / msg.value) + stor3) + claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] += marketEggs * stor2 / (msg.value * stor3 / msg.value) + stor3
                else:
                    require 4 * marketEggs * stor2 / (msg.value * stor3 / msg.value) + stor3 / marketEggs * stor2 / (msg.value * stor3 / msg.value) + stor3 == 4
                    require 4 * marketEggs * stor2 / (msg.value * stor3 / msg.value) + stor3 / 100 <= marketEggs * stor2 / (msg.value * stor3 / msg.value) + stor3
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (marketEggs * stor2 / (msg.value * stor3 / msg.value) + stor3) - (4 * marketEggs * stor2 / (msg.value * stor3 / msg.value) + stor3 / 100) + claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = (marketEggs * stor2 / (msg.value * stor3 / msg.value) + stor3) - (4 * marketEggs * stor2 / (msg.value * stor3 / msg.value) + stor3 / 100) + claimedEggs[address(msg.sender)]
        else:
            require (eth.balance(this.address) * stor2) - (msg.value * stor2) / stor2 == eth.balance(this.address) - msg.value
            if not stor3:
                require msg.value
                require ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3 >= stor3
                require ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3
                if not marketEggs * stor2 / ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3:
                    require 0 <= marketEggs * stor2 / ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (marketEggs * stor2 / ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3) + claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] += marketEggs * stor2 / ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3
                else:
                    require 4 * marketEggs * stor2 / ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3 / marketEggs * stor2 / ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3 == 4
                    require 4 * marketEggs * stor2 / ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3 / 100 <= marketEggs * stor2 / ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (marketEggs * stor2 / ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3) - (4 * marketEggs * stor2 / ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3 / 100) + claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = (marketEggs * stor2 / ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3) - (4 * marketEggs * stor2 / ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3 / 100) + claimedEggs[address(msg.sender)]
            else:
                require msg.value * stor3 / stor3 == msg.value
                require msg.value * stor3 >= 0
                require msg.value
                require ((msg.value * stor3) + (eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3 >= stor3
                require ((msg.value * stor3) + (eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3
                if not marketEggs * stor2 / ((msg.value * stor3) + (eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3:
                    require 0 <= marketEggs * stor2 / ((msg.value * stor3) + (eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (marketEggs * stor2 / ((msg.value * stor3) + (eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3) + claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] += marketEggs * stor2 / ((msg.value * stor3) + (eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3
                else:
                    require 4 * marketEggs * stor2 / ((msg.value * stor3) + (eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3 / marketEggs * stor2 / ((msg.value * stor3) + (eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3 == 4
                    require 4 * marketEggs * stor2 / ((msg.value * stor3) + (eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3 / 100 <= marketEggs * stor2 / ((msg.value * stor3) + (eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (marketEggs * stor2 / ((msg.value * stor3) + (eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3) - (4 * marketEggs * stor2 / ((msg.value * stor3) + (eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3 / 100) + claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = (marketEggs * stor2 / ((msg.value * stor3) + (eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3) - (4 * marketEggs * stor2 / ((msg.value * stor3) + (eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) + stor3 / 100) + claimedEggs[address(msg.sender)]
}

function sellEggs() {
    require stor4
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1SHRIMP:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            if not stor2:
                if not stor3:
                    require claimedEggs[address(msg.sender)]
                    require (0 / claimedEggs[address(msg.sender)]) + stor3 >= stor3
                    require (0 / claimedEggs[address(msg.sender)]) + stor3
                    if not 0 / (0 / claimedEggs[address(msg.sender)]) + stor3:
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                             gas 2300 wei
                        require ext_call.success
                        require 0 <= 0 / (0 / claimedEggs[address(msg.sender)]) + stor3
                        call msg.sender with:
                           value 0 / (0 / claimedEggs[address(msg.sender)]) + stor3 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 4 * 0 / (0 / claimedEggs[address(msg.sender)]) + stor3 / 0 / (0 / claimedEggs[address(msg.sender)]) + stor3 == 4
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                           value 4 * 0 / (0 / claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require 4 * 0 / (0 / claimedEggs[address(msg.sender)]) + stor3 / 100 <= 0 / (0 / claimedEggs[address(msg.sender)]) + stor3
                        call msg.sender with:
                           value (0 / (0 / claimedEggs[address(msg.sender)]) + stor3) - (4 * 0 / (0 / claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require claimedEggs[address(msg.sender)] * stor3 / stor3 == claimedEggs[address(msg.sender)]
                    require claimedEggs[address(msg.sender)] * stor3 >= 0
                    require claimedEggs[address(msg.sender)]
                    require (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 >= stor3
                    require (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3
                    if not 0 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3:
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                             gas 2300 wei
                        require ext_call.success
                        require 0 <= 0 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3
                        call msg.sender with:
                           value 0 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 4 * 0 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 / 0 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 == 4
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                           value 4 * 0 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require 4 * 0 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 / 100 <= 0 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3
                        call msg.sender with:
                           value (0 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3) - (4 * 0 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require eth.balance(this.address) * stor2 / stor2 == eth.balance(this.address)
                if not stor2:
                    if not stor3:
                        require claimedEggs[address(msg.sender)]
                        require (0 / claimedEggs[address(msg.sender)]) + stor3 >= stor3
                        require (0 / claimedEggs[address(msg.sender)]) + stor3
                        if not eth.balance(this.address) * stor2 / (0 / claimedEggs[address(msg.sender)]) + stor3:
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= eth.balance(this.address) * stor2 / (0 / claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value eth.balance(this.address) * stor2 / (0 / claimedEggs[address(msg.sender)]) + stor3 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 4 * eth.balance(this.address) * stor2 / (0 / claimedEggs[address(msg.sender)]) + stor3 / eth.balance(this.address) * stor2 / (0 / claimedEggs[address(msg.sender)]) + stor3 == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * eth.balance(this.address) * stor2 / (0 / claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * eth.balance(this.address) * stor2 / (0 / claimedEggs[address(msg.sender)]) + stor3 / 100 <= eth.balance(this.address) * stor2 / (0 / claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value (eth.balance(this.address) * stor2 / (0 / claimedEggs[address(msg.sender)]) + stor3) - (4 * eth.balance(this.address) * stor2 / (0 / claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require claimedEggs[address(msg.sender)] * stor3 / stor3 == claimedEggs[address(msg.sender)]
                        require claimedEggs[address(msg.sender)] * stor3 >= 0
                        require claimedEggs[address(msg.sender)]
                        require (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 >= stor3
                        require (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3
                        if not eth.balance(this.address) * stor2 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3:
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= eth.balance(this.address) * stor2 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value eth.balance(this.address) * stor2 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 4 * eth.balance(this.address) * stor2 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 / eth.balance(this.address) * stor2 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * eth.balance(this.address) * stor2 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * eth.balance(this.address) * stor2 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 / 100 <= eth.balance(this.address) * stor2 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value (eth.balance(this.address) * stor2 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3) - (4 * eth.balance(this.address) * stor2 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require marketEggs * stor2 / stor2 == marketEggs
                    if not stor3:
                        require marketEggs * stor2 >= marketEggs * stor2
                        require claimedEggs[address(msg.sender)]
                        require (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3 >= stor3
                        require (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3
                        if not eth.balance(this.address) * stor2 / (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3:
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= eth.balance(this.address) * stor2 / (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value eth.balance(this.address) * stor2 / (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 4 * eth.balance(this.address) * stor2 / (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3 / eth.balance(this.address) * stor2 / (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3 == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * eth.balance(this.address) * stor2 / (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * eth.balance(this.address) * stor2 / (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3 / 100 <= eth.balance(this.address) * stor2 / (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value (eth.balance(this.address) * stor2 / (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3) - (4 * eth.balance(this.address) * stor2 / (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require claimedEggs[address(msg.sender)] * stor3 / stor3 == claimedEggs[address(msg.sender)]
                        require (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) >= marketEggs * stor2
                        require claimedEggs[address(msg.sender)]
                        require ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3 >= stor3
                        require ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3
                        if not eth.balance(this.address) * stor2 / ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3:
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= eth.balance(this.address) * stor2 / ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value eth.balance(this.address) * stor2 / ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 4 * eth.balance(this.address) * stor2 / ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3 / eth.balance(this.address) * stor2 / ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3 == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * eth.balance(this.address) * stor2 / ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * eth.balance(this.address) * stor2 / ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3 / 100 <= eth.balance(this.address) * stor2 / ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value (eth.balance(this.address) * stor2 / ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3) - (4 * eth.balance(this.address) * stor2 / ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                                 gas 2300 * is_zero(value) wei
        else:
            require hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
            require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            if not stor2:
                if not stor3:
                    require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]
                    require (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 >= stor3
                    require (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3
                    if not 0 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3:
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                        marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs
                        call ceoAddress with:
                             gas 2300 wei
                        require ext_call.success
                        require 0 <= 0 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3
                        call msg.sender with:
                           value 0 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 4 * 0 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / 0 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 == 4
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                        marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs
                        call ceoAddress with:
                           value 4 * 0 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require 4 * 0 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / 100 <= 0 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3
                        call msg.sender with:
                           value (0 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3) - (4 * 0 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / stor3 == (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]
                    require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) >= 0
                    require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]
                    require ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 >= stor3
                    require ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3
                    if not 0 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3:
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                        marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs
                        call ceoAddress with:
                             gas 2300 wei
                        require ext_call.success
                        require 0 <= 0 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3
                        call msg.sender with:
                           value 0 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 4 * 0 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / 0 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 == 4
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                        marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs
                        call ceoAddress with:
                           value 4 * 0 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require 4 * 0 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / 100 <= 0 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3
                        call msg.sender with:
                           value (0 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3) - (4 * 0 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require eth.balance(this.address) * stor2 / stor2 == eth.balance(this.address)
                if not stor2:
                    if not stor3:
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]
                        require (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 >= stor3
                        require (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3
                        if not eth.balance(this.address) * stor2 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3:
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= eth.balance(this.address) * stor2 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value eth.balance(this.address) * stor2 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 4 * eth.balance(this.address) * stor2 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / eth.balance(this.address) * stor2 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs
                            call ceoAddress with:
                               value 4 * eth.balance(this.address) * stor2 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * eth.balance(this.address) * stor2 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / 100 <= eth.balance(this.address) * stor2 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value (eth.balance(this.address) * stor2 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3) - (4 * eth.balance(this.address) * stor2 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / stor3 == (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) >= 0
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]
                        require ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 >= stor3
                        require ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3
                        if not eth.balance(this.address) * stor2 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3:
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= eth.balance(this.address) * stor2 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value eth.balance(this.address) * stor2 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 4 * eth.balance(this.address) * stor2 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / eth.balance(this.address) * stor2 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs
                            call ceoAddress with:
                               value 4 * eth.balance(this.address) * stor2 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * eth.balance(this.address) * stor2 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / 100 <= eth.balance(this.address) * stor2 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value (eth.balance(this.address) * stor2 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3) - (4 * eth.balance(this.address) * stor2 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require marketEggs * stor2 / stor2 == marketEggs
                    if not stor3:
                        require marketEggs * stor2 >= marketEggs * stor2
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]
                        require (marketEggs * stor2 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 >= stor3
                        require (marketEggs * stor2 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3
                        if not eth.balance(this.address) * stor2 / (marketEggs * stor2 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3:
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= eth.balance(this.address) * stor2 / (marketEggs * stor2 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value eth.balance(this.address) * stor2 / (marketEggs * stor2 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 4 * eth.balance(this.address) * stor2 / (marketEggs * stor2 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / eth.balance(this.address) * stor2 / (marketEggs * stor2 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs
                            call ceoAddress with:
                               value 4 * eth.balance(this.address) * stor2 / (marketEggs * stor2 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * eth.balance(this.address) * stor2 / (marketEggs * stor2 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / 100 <= eth.balance(this.address) * stor2 / (marketEggs * stor2 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value (eth.balance(this.address) * stor2 / (marketEggs * stor2 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3) - (4 * eth.balance(this.address) * stor2 / (marketEggs * stor2 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) / stor3 == (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) >= marketEggs * stor2
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]
                        require ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 >= stor3
                        require ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3
                        if not eth.balance(this.address) * stor2 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3:
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= eth.balance(this.address) * stor2 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value eth.balance(this.address) * stor2 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 4 * eth.balance(this.address) * stor2 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / eth.balance(this.address) * stor2 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)] + marketEggs
                            call ceoAddress with:
                               value 4 * eth.balance(this.address) * stor2 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * eth.balance(this.address) * stor2 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / 100 <= eth.balance(this.address) * stor2 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value (eth.balance(this.address) * stor2 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3) - (4 * eth.balance(this.address) * stor2 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                                 gas 2300 * is_zero(value) wei
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            if not stor2:
                if not stor3:
                    require claimedEggs[address(msg.sender)]
                    require (0 / claimedEggs[address(msg.sender)]) + stor3 >= stor3
                    require (0 / claimedEggs[address(msg.sender)]) + stor3
                    if not 0 / (0 / claimedEggs[address(msg.sender)]) + stor3:
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                             gas 2300 wei
                        require ext_call.success
                        require 0 <= 0 / (0 / claimedEggs[address(msg.sender)]) + stor3
                        call msg.sender with:
                           value 0 / (0 / claimedEggs[address(msg.sender)]) + stor3 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 4 * 0 / (0 / claimedEggs[address(msg.sender)]) + stor3 / 0 / (0 / claimedEggs[address(msg.sender)]) + stor3 == 4
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                           value 4 * 0 / (0 / claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require 4 * 0 / (0 / claimedEggs[address(msg.sender)]) + stor3 / 100 <= 0 / (0 / claimedEggs[address(msg.sender)]) + stor3
                        call msg.sender with:
                           value (0 / (0 / claimedEggs[address(msg.sender)]) + stor3) - (4 * 0 / (0 / claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require claimedEggs[address(msg.sender)] * stor3 / stor3 == claimedEggs[address(msg.sender)]
                    require claimedEggs[address(msg.sender)] * stor3 >= 0
                    require claimedEggs[address(msg.sender)]
                    require (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 >= stor3
                    require (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3
                    if not 0 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3:
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                             gas 2300 wei
                        require ext_call.success
                        require 0 <= 0 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3
                        call msg.sender with:
                           value 0 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 4 * 0 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 / 0 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 == 4
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                           value 4 * 0 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require 4 * 0 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 / 100 <= 0 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3
                        call msg.sender with:
                           value (0 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3) - (4 * 0 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require eth.balance(this.address) * stor2 / stor2 == eth.balance(this.address)
                if not stor2:
                    if not stor3:
                        require claimedEggs[address(msg.sender)]
                        require (0 / claimedEggs[address(msg.sender)]) + stor3 >= stor3
                        require (0 / claimedEggs[address(msg.sender)]) + stor3
                        if not eth.balance(this.address) * stor2 / (0 / claimedEggs[address(msg.sender)]) + stor3:
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= eth.balance(this.address) * stor2 / (0 / claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value eth.balance(this.address) * stor2 / (0 / claimedEggs[address(msg.sender)]) + stor3 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 4 * eth.balance(this.address) * stor2 / (0 / claimedEggs[address(msg.sender)]) + stor3 / eth.balance(this.address) * stor2 / (0 / claimedEggs[address(msg.sender)]) + stor3 == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * eth.balance(this.address) * stor2 / (0 / claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * eth.balance(this.address) * stor2 / (0 / claimedEggs[address(msg.sender)]) + stor3 / 100 <= eth.balance(this.address) * stor2 / (0 / claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value (eth.balance(this.address) * stor2 / (0 / claimedEggs[address(msg.sender)]) + stor3) - (4 * eth.balance(this.address) * stor2 / (0 / claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require claimedEggs[address(msg.sender)] * stor3 / stor3 == claimedEggs[address(msg.sender)]
                        require claimedEggs[address(msg.sender)] * stor3 >= 0
                        require claimedEggs[address(msg.sender)]
                        require (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 >= stor3
                        require (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3
                        if not eth.balance(this.address) * stor2 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3:
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= eth.balance(this.address) * stor2 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value eth.balance(this.address) * stor2 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 4 * eth.balance(this.address) * stor2 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 / eth.balance(this.address) * stor2 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * eth.balance(this.address) * stor2 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * eth.balance(this.address) * stor2 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 / 100 <= eth.balance(this.address) * stor2 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value (eth.balance(this.address) * stor2 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3) - (4 * eth.balance(this.address) * stor2 / (claimedEggs[address(msg.sender)] * stor3 / claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require marketEggs * stor2 / stor2 == marketEggs
                    if not stor3:
                        require marketEggs * stor2 >= marketEggs * stor2
                        require claimedEggs[address(msg.sender)]
                        require (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3 >= stor3
                        require (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3
                        if not eth.balance(this.address) * stor2 / (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3:
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= eth.balance(this.address) * stor2 / (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value eth.balance(this.address) * stor2 / (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 4 * eth.balance(this.address) * stor2 / (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3 / eth.balance(this.address) * stor2 / (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3 == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * eth.balance(this.address) * stor2 / (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * eth.balance(this.address) * stor2 / (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3 / 100 <= eth.balance(this.address) * stor2 / (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value (eth.balance(this.address) * stor2 / (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3) - (4 * eth.balance(this.address) * stor2 / (marketEggs * stor2 / claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require claimedEggs[address(msg.sender)] * stor3 / stor3 == claimedEggs[address(msg.sender)]
                        require (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) >= marketEggs * stor2
                        require claimedEggs[address(msg.sender)]
                        require ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3 >= stor3
                        require ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3
                        if not eth.balance(this.address) * stor2 / ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3:
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= eth.balance(this.address) * stor2 / ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value eth.balance(this.address) * stor2 / ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 4 * eth.balance(this.address) * stor2 / ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3 / eth.balance(this.address) * stor2 / ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3 == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * eth.balance(this.address) * stor2 / ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * eth.balance(this.address) * stor2 / ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3 / 100 <= eth.balance(this.address) * stor2 / ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value (eth.balance(this.address) * stor2 / ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3) - (4 * eth.balance(this.address) * stor2 / ((claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                                 gas 2300 * is_zero(value) wei
        else:
            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            if not stor2:
                if not stor3:
                    require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]
                    require (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 >= stor3
                    require (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3
                    if not 0 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3:
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                        marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs
                        call ceoAddress with:
                             gas 2300 wei
                        require ext_call.success
                        require 0 <= 0 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3
                        call msg.sender with:
                           value 0 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 4 * 0 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / 0 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 == 4
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                        marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs
                        call ceoAddress with:
                           value 4 * 0 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require 4 * 0 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / 100 <= 0 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3
                        call msg.sender with:
                           value (0 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3) - (4 * 0 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / stor3 == (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]
                    require (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) >= 0
                    require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]
                    require ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 >= stor3
                    require ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3
                    if not 0 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3:
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                        marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs
                        call ceoAddress with:
                             gas 2300 wei
                        require ext_call.success
                        require 0 <= 0 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3
                        call msg.sender with:
                           value 0 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 4 * 0 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / 0 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 == 4
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                        marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs
                        call ceoAddress with:
                           value 4 * 0 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require 4 * 0 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / 100 <= 0 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3
                        call msg.sender with:
                           value (0 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3) - (4 * 0 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require eth.balance(this.address) * stor2 / stor2 == eth.balance(this.address)
                if not stor2:
                    if not stor3:
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]
                        require (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 >= stor3
                        require (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3
                        if not eth.balance(this.address) * stor2 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3:
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= eth.balance(this.address) * stor2 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value eth.balance(this.address) * stor2 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 4 * eth.balance(this.address) * stor2 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / eth.balance(this.address) * stor2 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs
                            call ceoAddress with:
                               value 4 * eth.balance(this.address) * stor2 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * eth.balance(this.address) * stor2 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / 100 <= eth.balance(this.address) * stor2 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value (eth.balance(this.address) * stor2 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3) - (4 * eth.balance(this.address) * stor2 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / stor3 == (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) >= 0
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]
                        require ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 >= stor3
                        require ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3
                        if not eth.balance(this.address) * stor2 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3:
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= eth.balance(this.address) * stor2 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value eth.balance(this.address) * stor2 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 4 * eth.balance(this.address) * stor2 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / eth.balance(this.address) * stor2 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs
                            call ceoAddress with:
                               value 4 * eth.balance(this.address) * stor2 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * eth.balance(this.address) * stor2 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / 100 <= eth.balance(this.address) * stor2 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value (eth.balance(this.address) * stor2 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3) - (4 * eth.balance(this.address) * stor2 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require marketEggs * stor2 / stor2 == marketEggs
                    if not stor3:
                        require marketEggs * stor2 >= marketEggs * stor2
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]
                        require (marketEggs * stor2 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 >= stor3
                        require (marketEggs * stor2 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3
                        if not eth.balance(this.address) * stor2 / (marketEggs * stor2 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3:
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= eth.balance(this.address) * stor2 / (marketEggs * stor2 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value eth.balance(this.address) * stor2 / (marketEggs * stor2 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 4 * eth.balance(this.address) * stor2 / (marketEggs * stor2 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / eth.balance(this.address) * stor2 / (marketEggs * stor2 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs
                            call ceoAddress with:
                               value 4 * eth.balance(this.address) * stor2 / (marketEggs * stor2 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * eth.balance(this.address) * stor2 / (marketEggs * stor2 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / 100 <= eth.balance(this.address) * stor2 / (marketEggs * stor2 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value (eth.balance(this.address) * stor2 / (marketEggs * stor2 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3) - (4 * eth.balance(this.address) * stor2 / (marketEggs * stor2 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) / stor3 == (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) >= marketEggs * stor2
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]
                        require ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 >= stor3
                        require ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3
                        if not eth.balance(this.address) * stor2 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3:
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= eth.balance(this.address) * stor2 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value eth.balance(this.address) * stor2 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 4 * eth.balance(this.address) * stor2 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / eth.balance(this.address) * stor2 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)] + marketEggs
                            call ceoAddress with:
                               value 4 * eth.balance(this.address) * stor2 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * eth.balance(this.address) * stor2 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / 100 <= eth.balance(this.address) * stor2 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3
                            call msg.sender with:
                               value (eth.balance(this.address) * stor2 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3) - (4 * eth.balance(this.address) * stor2 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor3) + (claimedEggs[address(msg.sender)] * stor3) + (marketEggs * stor2) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[address(msg.sender)]) + stor3 / 100) wei
                                 gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
