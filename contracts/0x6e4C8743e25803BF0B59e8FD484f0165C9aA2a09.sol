contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4;
address stor4; offset 8
uint256 stor10;

function _fallback() payable {
    stor0 = 24 * 3600
    stor1 = 300
    stor2 = 10000
    stor3 = 5000
    uint8(stor4.field_0) = 0
    stor10 = 100000
    require not msg.value
    address(stor4.field_8) = msg.sender
    return code.data[154 len 5435]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint256 EGGS_TO_HATCH_1SHRIMP;
uint256 STARTING_SHRIMP;
uint256 stor2;
uint256 stor3;
uint8 initialized;
address ceoAddress; offset 8
mapping of struct hatcheryShrimp;
mapping of uint256 claimedEggs;
mapping of uint256 lastHatch;
mapping of address referrals;
uint256 marketEggs;
uint256 snailmasterReq;

function ceoAddress() {
    return ceoAddress
}

function initialized() {
    return bool(initialized)
}

function getSnailmasterReq() {
    return snailmasterReq
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
    return hatcheryShrimp[arg1].field_0
}

function snailmasterReq() {
    return snailmasterReq
}

function referrals(address arg1) {
    return referrals[arg1]
}

function getMyShrimp() {
    return hatcheryShrimp[address(msg.sender)].field_0
}

function STARTING_SHRIMP() {
    return STARTING_SHRIMP
}

function _fallback() payable {
    revert
}

function seedMarket(uint256 arg1) payable {
    require not marketEggs
    initialized = 1
    marketEggs = arg1
}

function devFee(uint256 arg1) {
    if not arg1:
        return 0
    require arg1
    require 4 * arg1 / arg1 == 4
    return (4 * arg1 / 100)
}

function becomeSnailmaster() {
    require initialized
    require hatcheryShrimp[address(msg.sender)].field_0 >= snailmasterReq
    require snailmasterReq <= hatcheryShrimp[address(msg.sender)].field_0
    hatcheryShrimp[address(msg.sender)].field_0 -= snailmasterReq
    require snailmasterReq + 100000 >= snailmasterReq
    snailmasterReq += 100000
    ceoAddress = msg.sender
}

function getFreeShrimp() payable {
    require initialized
    require msg.value == 10^15
    call ceoAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require not hatcheryShrimp[address(msg.sender)].field_0
    lastHatch[address(msg.sender)] = block.timestamp
    hatcheryShrimp[address(msg.sender)].field_0 = STARTING_SHRIMP
}

function getEggsSinceLastHatch(address arg1) {
    require lastHatch[address(arg1)] <= block.timestamp
    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(arg1)]:
        if not EGGS_TO_HATCH_1SHRIMP:
            return 0
        if EGGS_TO_HATCH_1SHRIMP:
            if EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(arg1)].field_0 / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(arg1)].field_0:
                return (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(arg1)].field_0)
    else:
        if not block.timestamp - lastHatch[address(arg1)]:
            return 0
        if block.timestamp - lastHatch[address(arg1)]:
            if (block.timestamp * hatcheryShrimp[address(arg1)].field_0) - (lastHatch[address(arg1)] * hatcheryShrimp[address(arg1)].field_0) / block.timestamp - lastHatch[address(arg1)] == hatcheryShrimp[address(arg1)].field_0:
                return ((block.timestamp * hatcheryShrimp[address(arg1)].field_0) - (lastHatch[address(arg1)] * hatcheryShrimp[address(arg1)].field_0))
    revert
}

function getMyEggs() {
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1SHRIMP:
            if claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]:
                return claimedEggs[address(msg.sender)]
        else:
            if EGGS_TO_HATCH_1SHRIMP:
                if EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)].field_0:
                    if claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) >= claimedEggs[address(msg.sender)]:
                        return (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            if claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]:
                return claimedEggs[address(msg.sender)]
        else:
            if block.timestamp - lastHatch[address(msg.sender)]:
                if (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)].field_0:
                    if claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) >= claimedEggs[address(msg.sender)]:
                        return (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
    revert
}

function calculateTrade(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not stor2:
        if not stor3:
            if arg1:
                if stor3 + (0 / arg1) >= stor3:
                    if stor3 + (0 / arg1):
                        return (0 / stor3 + (0 / arg1))
        else:
            if stor3:
                if stor3 * arg1 / stor3 == arg1:
                    if stor3 * arg1 >= 0:
                        if arg1:
                            if stor3 + (stor3 * arg1 / arg1) >= stor3:
                                if stor3 + (stor3 * arg1 / arg1):
                                    return (0 / stor3 + (stor3 * arg1 / arg1))
    else:
        if stor2:
            if stor2 * arg3 / stor2 == arg3:
                if not stor2:
                    if not stor3:
                        if arg1:
                            if stor3 + (0 / arg1) >= stor3:
                                if stor3 + (0 / arg1):
                                    return (stor2 * arg3 / stor3 + (0 / arg1))
                    else:
                        if stor3:
                            if stor3 * arg1 / stor3 == arg1:
                                if stor3 * arg1 >= 0:
                                    if arg1:
                                        if stor3 + (stor3 * arg1 / arg1) >= stor3:
                                            if stor3 + (stor3 * arg1 / arg1):
                                                return (stor2 * arg3 / stor3 + (stor3 * arg1 / arg1))
                else:
                    if stor2:
                        if stor2 * arg2 / stor2 == arg2:
                            if not stor3:
                                if stor2 * arg2 >= stor2 * arg2:
                                    if arg1:
                                        if stor3 + (stor2 * arg2 / arg1) >= stor3:
                                            if stor3 + (stor2 * arg2 / arg1):
                                                return (stor2 * arg3 / stor3 + (stor2 * arg2 / arg1))
                            else:
                                if stor3:
                                    if stor3 * arg1 / stor3 == arg1:
                                        if (stor2 * arg2) + (stor3 * arg1) >= stor2 * arg2:
                                            if arg1:
                                                if stor3 + ((stor2 * arg2) + (stor3 * arg1) / arg1) >= stor3:
                                                    if stor3 + ((stor2 * arg2) + (stor3 * arg1) / arg1):
                                                        return (stor2 * arg3 / stor3 + ((stor2 * arg2) + (stor3 * arg1) / arg1))
    revert
}

function calculateEggBuy(uint256 arg1, uint256 arg2) {
    if not stor2:
        if not stor3:
            if arg1:
                if stor3 + (0 / arg1) >= stor3:
                    if stor3 + (0 / arg1):
                        return (0 / stor3 + (0 / arg1))
        else:
            if stor3:
                if stor3 * arg1 / stor3 == arg1:
                    if stor3 * arg1 >= 0:
                        if arg1:
                            if stor3 + (stor3 * arg1 / arg1) >= stor3:
                                if stor3 + (stor3 * arg1 / arg1):
                                    return (0 / stor3 + (stor3 * arg1 / arg1))
    else:
        if stor2:
            if stor2 * marketEggs / stor2 == marketEggs:
                if not stor2:
                    if not stor3:
                        if arg1:
                            if stor3 + (0 / arg1) >= stor3:
                                if stor3 + (0 / arg1):
                                    return (stor2 * marketEggs / stor3 + (0 / arg1))
                    else:
                        if stor3:
                            if stor3 * arg1 / stor3 == arg1:
                                if stor3 * arg1 >= 0:
                                    if arg1:
                                        if stor3 + (stor3 * arg1 / arg1) >= stor3:
                                            if stor3 + (stor3 * arg1 / arg1):
                                                return (stor2 * marketEggs / stor3 + (stor3 * arg1 / arg1))
                else:
                    if stor2:
                        if stor2 * arg2 / stor2 == arg2:
                            if not stor3:
                                if stor2 * arg2 >= stor2 * arg2:
                                    if arg1:
                                        if stor3 + (stor2 * arg2 / arg1) >= stor3:
                                            if stor3 + (stor2 * arg2 / arg1):
                                                return (stor2 * marketEggs / stor3 + (stor2 * arg2 / arg1))
                            else:
                                if stor3:
                                    if stor3 * arg1 / stor3 == arg1:
                                        if (stor2 * arg2) + (stor3 * arg1) >= stor2 * arg2:
                                            if arg1:
                                                if stor3 + ((stor2 * arg2) + (stor3 * arg1) / arg1) >= stor3:
                                                    if stor3 + ((stor2 * arg2) + (stor3 * arg1) / arg1):
                                                        return (stor2 * marketEggs / stor3 + ((stor2 * arg2) + (stor3 * arg1) / arg1))
    revert
}

function calculateEggSell(uint256 arg1) {
    if not stor2:
        if not stor3:
            if arg1:
                if stor3 + (0 / arg1) >= stor3:
                    if stor3 + (0 / arg1):
                        return (0 / stor3 + (0 / arg1))
        else:
            if stor3:
                if stor3 * arg1 / stor3 == arg1:
                    if stor3 * arg1 >= 0:
                        if arg1:
                            if stor3 + (stor3 * arg1 / arg1) >= stor3:
                                if stor3 + (stor3 * arg1 / arg1):
                                    return (0 / stor3 + (stor3 * arg1 / arg1))
    else:
        if stor2:
            if stor2 * eth.balance(this.address) / stor2 == eth.balance(this.address):
                if not stor2:
                    if not stor3:
                        if arg1:
                            if stor3 + (0 / arg1) >= stor3:
                                if stor3 + (0 / arg1):
                                    return (stor2 * eth.balance(this.address) / stor3 + (0 / arg1))
                    else:
                        if stor3:
                            if stor3 * arg1 / stor3 == arg1:
                                if stor3 * arg1 >= 0:
                                    if arg1:
                                        if stor3 + (stor3 * arg1 / arg1) >= stor3:
                                            if stor3 + (stor3 * arg1 / arg1):
                                                return (stor2 * eth.balance(this.address) / stor3 + (stor3 * arg1 / arg1))
                else:
                    if stor2:
                        if stor2 * marketEggs / stor2 == marketEggs:
                            if not stor3:
                                if stor2 * marketEggs >= stor2 * marketEggs:
                                    if arg1:
                                        if stor3 + (stor2 * marketEggs / arg1) >= stor3:
                                            if stor3 + (stor2 * marketEggs / arg1):
                                                return (stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / arg1))
                            else:
                                if stor3:
                                    if stor3 * arg1 / stor3 == arg1:
                                        if (stor2 * marketEggs) + (stor3 * arg1) >= stor2 * marketEggs:
                                            if arg1:
                                                if stor3 + ((stor2 * marketEggs) + (stor3 * arg1) / arg1) >= stor3:
                                                    if stor3 + ((stor2 * marketEggs) + (stor3 * arg1) / arg1):
                                                        return (stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * arg1) / arg1))
    revert
}

function calculateEggBuySimple(uint256 arg1) {
    if not stor2:
        if not stor3:
            if arg1:
                if stor3 + (0 / arg1) >= stor3:
                    if stor3 + (0 / arg1):
                        return (0 / stor3 + (0 / arg1))
        else:
            if stor3:
                if stor3 * arg1 / stor3 == arg1:
                    if stor3 * arg1 >= 0:
                        if arg1:
                            if stor3 + (stor3 * arg1 / arg1) >= stor3:
                                if stor3 + (stor3 * arg1 / arg1):
                                    return (0 / stor3 + (stor3 * arg1 / arg1))
    else:
        if stor2:
            if stor2 * marketEggs / stor2 == marketEggs:
                if not stor2:
                    if not stor3:
                        if arg1:
                            if stor3 + (0 / arg1) >= stor3:
                                if stor3 + (0 / arg1):
                                    return (stor2 * marketEggs / stor3 + (0 / arg1))
                    else:
                        if stor3:
                            if stor3 * arg1 / stor3 == arg1:
                                if stor3 * arg1 >= 0:
                                    if arg1:
                                        if stor3 + (stor3 * arg1 / arg1) >= stor3:
                                            if stor3 + (stor3 * arg1 / arg1):
                                                return (stor2 * marketEggs / stor3 + (stor3 * arg1 / arg1))
                else:
                    if stor2:
                        if stor2 * eth.balance(this.address) / stor2 == eth.balance(this.address):
                            if not stor3:
                                if stor2 * eth.balance(this.address) >= stor2 * eth.balance(this.address):
                                    if arg1:
                                        if stor3 + (stor2 * eth.balance(this.address) / arg1) >= stor3:
                                            if stor3 + (stor2 * eth.balance(this.address) / arg1):
                                                return (stor2 * marketEggs / stor3 + (stor2 * eth.balance(this.address) / arg1))
                            else:
                                if stor3:
                                    if stor3 * arg1 / stor3 == arg1:
                                        if (stor2 * eth.balance(this.address)) + (stor3 * arg1) >= stor2 * eth.balance(this.address):
                                            if arg1:
                                                if stor3 + ((stor2 * eth.balance(this.address)) + (stor3 * arg1) / arg1) >= stor3:
                                                    if stor3 + ((stor2 * eth.balance(this.address)) + (stor3 * arg1) / arg1):
                                                        return (stor2 * marketEggs / stor3 + ((stor2 * eth.balance(this.address)) + (stor3 * arg1) / arg1))
    revert
}

function hatchEggs(address arg1) {
    require initialized
    if not referrals[address(msg.sender)]:
        if referrals[address(msg.sender)] != msg.sender:
            referrals[address(msg.sender)] = arg1
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1SHRIMP:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1SHRIMP
            require hatcheryShrimp[address(msg.sender)].field_0 + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)].field_0
            hatcheryShrimp[address(msg.sender)].field_0 += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor8[address(msg.sender)]] + (claimedEggs[address(msg.sender)] / 5) >= claimedEggs[stor8[address(msg.sender)]]
            claimedEggs[stor8[address(msg.sender)]] += claimedEggs[address(msg.sender)] / 5
            require marketEggs + (claimedEggs[address(msg.sender)] / 10) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] / 10
        else:
            require EGGS_TO_HATCH_1SHRIMP
            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)].field_0
            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1SHRIMP
            require hatcheryShrimp[address(msg.sender)].field_0 + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)].field_0
            hatcheryShrimp[address(msg.sender)].field_0 += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor8[address(msg.sender)]] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) / 5) >= claimedEggs[stor8[address(msg.sender)]]
            claimedEggs[stor8[address(msg.sender)]] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) / 5
            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) / 10) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) / 10
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1SHRIMP
            require hatcheryShrimp[address(msg.sender)].field_0 + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)].field_0
            hatcheryShrimp[address(msg.sender)].field_0 += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor8[address(msg.sender)]] + (claimedEggs[address(msg.sender)] / 5) >= claimedEggs[stor8[address(msg.sender)]]
            claimedEggs[stor8[address(msg.sender)]] += claimedEggs[address(msg.sender)] / 5
            require marketEggs + (claimedEggs[address(msg.sender)] / 10) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] / 10
        else:
            require block.timestamp - lastHatch[address(msg.sender)]
            require (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)].field_0
            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1SHRIMP
            require hatcheryShrimp[address(msg.sender)].field_0 + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)].field_0
            hatcheryShrimp[address(msg.sender)].field_0 += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor8[address(msg.sender)]] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) / 5) >= claimedEggs[stor8[address(msg.sender)]]
            claimedEggs[stor8[address(msg.sender)]] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) / 5
            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) / 10) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) / 10
}

function buyEggs() payable {
    require initialized
    require msg.value <= eth.balance(this.address)
    if not stor2:
        if not stor3:
            require msg.value
            require stor3 + (0 / msg.value) >= stor3
            require stor3 + (0 / msg.value)
            if not 0 / stor3 + (0 / msg.value):
                require 0 <= 0 / stor3 + (0 / msg.value)
                if not msg.value:
                    call ceoAddress with:
                         gas 2300 wei
                else:
                    require msg.value
                    require 4 * msg.value / msg.value == 4
                    call ceoAddress with:
                       value 4 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                require ext_call.success
                require claimedEggs[address(msg.sender)] + (0 / stor3 + (0 / msg.value)) >= claimedEggs[address(msg.sender)]
                claimedEggs[address(msg.sender)] += 0 / stor3 + (0 / msg.value)
            else:
                require 0 / stor3 + (0 / msg.value)
                require 4 * 0 / stor3 + (0 / msg.value) / 0 / stor3 + (0 / msg.value) == 4
                require 4 * 0 / stor3 + (0 / msg.value) / 100 <= 0 / stor3 + (0 / msg.value)
                if not msg.value:
                    call ceoAddress with:
                         gas 2300 wei
                else:
                    require msg.value
                    require 4 * msg.value / msg.value == 4
                    call ceoAddress with:
                       value 4 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                require ext_call.success
                require claimedEggs[address(msg.sender)] + (0 / stor3 + (0 / msg.value)) - (4 * 0 / stor3 + (0 / msg.value) / 100) >= claimedEggs[address(msg.sender)]
                claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (0 / stor3 + (0 / msg.value)) - (4 * 0 / stor3 + (0 / msg.value) / 100)
        else:
            require stor3
            require stor3 * msg.value / stor3 == msg.value
            require stor3 * msg.value >= 0
            require msg.value
            require stor3 + (stor3 * msg.value / msg.value) >= stor3
            require stor3 + (stor3 * msg.value / msg.value)
            if not 0 / stor3 + (stor3 * msg.value / msg.value):
                require 0 <= 0 / stor3 + (stor3 * msg.value / msg.value)
                if not msg.value:
                    call ceoAddress with:
                         gas 2300 wei
                else:
                    require msg.value
                    require 4 * msg.value / msg.value == 4
                    call ceoAddress with:
                       value 4 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                require ext_call.success
                require claimedEggs[address(msg.sender)] + (0 / stor3 + (stor3 * msg.value / msg.value)) >= claimedEggs[address(msg.sender)]
                claimedEggs[address(msg.sender)] += 0 / stor3 + (stor3 * msg.value / msg.value)
            else:
                require 0 / stor3 + (stor3 * msg.value / msg.value)
                require 4 * 0 / stor3 + (stor3 * msg.value / msg.value) / 0 / stor3 + (stor3 * msg.value / msg.value) == 4
                require 4 * 0 / stor3 + (stor3 * msg.value / msg.value) / 100 <= 0 / stor3 + (stor3 * msg.value / msg.value)
                if not msg.value:
                    call ceoAddress with:
                         gas 2300 wei
                else:
                    require msg.value
                    require 4 * msg.value / msg.value == 4
                    call ceoAddress with:
                       value 4 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                require ext_call.success
                require claimedEggs[address(msg.sender)] + (0 / stor3 + (stor3 * msg.value / msg.value)) - (4 * 0 / stor3 + (stor3 * msg.value / msg.value) / 100) >= claimedEggs[address(msg.sender)]
                claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (0 / stor3 + (stor3 * msg.value / msg.value)) - (4 * 0 / stor3 + (stor3 * msg.value / msg.value) / 100)
    else:
        require stor2
        require stor2 * marketEggs / stor2 == marketEggs
        if not stor2:
            if not stor3:
                require msg.value
                require stor3 + (0 / msg.value) >= stor3
                require stor3 + (0 / msg.value)
                if not stor2 * marketEggs / stor3 + (0 / msg.value):
                    require 0 <= stor2 * marketEggs / stor3 + (0 / msg.value)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + (0 / msg.value)) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] += stor2 * marketEggs / stor3 + (0 / msg.value)
                else:
                    require stor2 * marketEggs / stor3 + (0 / msg.value)
                    require 4 * stor2 * marketEggs / stor3 + (0 / msg.value) / stor2 * marketEggs / stor3 + (0 / msg.value) == 4
                    require 4 * stor2 * marketEggs / stor3 + (0 / msg.value) / 100 <= stor2 * marketEggs / stor3 + (0 / msg.value)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + (0 / msg.value)) - (4 * stor2 * marketEggs / stor3 + (0 / msg.value) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + (0 / msg.value)) - (4 * stor2 * marketEggs / stor3 + (0 / msg.value) / 100)
            else:
                require stor3
                require stor3 * msg.value / stor3 == msg.value
                require stor3 * msg.value >= 0
                require msg.value
                require stor3 + (stor3 * msg.value / msg.value) >= stor3
                require stor3 + (stor3 * msg.value / msg.value)
                if not stor2 * marketEggs / stor3 + (stor3 * msg.value / msg.value):
                    require 0 <= stor2 * marketEggs / stor3 + (stor3 * msg.value / msg.value)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + (stor3 * msg.value / msg.value)) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] += stor2 * marketEggs / stor3 + (stor3 * msg.value / msg.value)
                else:
                    require stor2 * marketEggs / stor3 + (stor3 * msg.value / msg.value)
                    require 4 * stor2 * marketEggs / stor3 + (stor3 * msg.value / msg.value) / stor2 * marketEggs / stor3 + (stor3 * msg.value / msg.value) == 4
                    require 4 * stor2 * marketEggs / stor3 + (stor3 * msg.value / msg.value) / 100 <= stor2 * marketEggs / stor3 + (stor3 * msg.value / msg.value)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + (stor3 * msg.value / msg.value)) - (4 * stor2 * marketEggs / stor3 + (stor3 * msg.value / msg.value) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + (stor3 * msg.value / msg.value)) - (4 * stor2 * marketEggs / stor3 + (stor3 * msg.value / msg.value) / 100)
        else:
            require stor2
            require (eth.balance(this.address) * stor2) - (msg.value * stor2) / stor2 == eth.balance(this.address) - msg.value
            if not stor3:
                require msg.value
                require stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) >= stor3
                require stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value)
                if not stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value):
                    require 0 <= stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value)) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] += stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value)
                else:
                    require stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value)
                    require 4 * stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) / stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) == 4
                    require 4 * stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) / 100 <= stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value)) - (4 * stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value)) - (4 * stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) / msg.value) / 100)
            else:
                require stor3
                require stor3 * msg.value / stor3 == msg.value
                require stor3 * msg.value >= 0
                require msg.value
                require stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) >= stor3
                require stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value)
                if not stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value):
                    require 0 <= stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value)) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] += stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value)
                else:
                    require stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value)
                    require 4 * stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) / stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) == 4
                    require 4 * stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) / 100 <= stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value)) - (4 * stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value)) - (4 * stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) / 100)
}

function sellEggs() {
    require initialized
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1SHRIMP:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            if not stor2:
                if not stor3:
                    require claimedEggs[address(msg.sender)]
                    require stor3 + (0 / claimedEggs[address(msg.sender)]) >= stor3
                    require stor3 + (0 / claimedEggs[address(msg.sender)])
                    if not 0 / stor3 + (0 / claimedEggs[address(msg.sender)]):
                        if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                        else:
                            require hatcheryShrimp[address(msg.sender)].field_0 / 3
                            require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                            hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                             gas 2300 wei
                        require ext_call.success
                        require 0 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor3 + (0 / claimedEggs[address(msg.sender)])
                        require 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) == 4
                        if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                        else:
                            require hatcheryShrimp[address(msg.sender)].field_0 / 3
                            require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                            hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                           value 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value (0 / stor3 + (0 / claimedEggs[address(msg.sender)])) - (4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require stor3
                    require stor3 * claimedEggs[address(msg.sender)] / stor3 == claimedEggs[address(msg.sender)]
                    require stor3 * claimedEggs[address(msg.sender)] >= 0
                    require claimedEggs[address(msg.sender)]
                    require stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) >= stor3
                    require stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                    if not 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]):
                        if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                        else:
                            require hatcheryShrimp[address(msg.sender)].field_0 / 3
                            require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                            hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                             gas 2300 wei
                        require ext_call.success
                        require 0 <= 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        require 4 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) == 4
                        if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                        else:
                            require hatcheryShrimp[address(msg.sender)].field_0 / 3
                            require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                            hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                           value 4 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require 4 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 <= 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value (0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])) - (4 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require stor2
                require stor2 * eth.balance(this.address) / stor2 == eth.balance(this.address)
                if not stor2:
                    if not stor3:
                        require claimedEggs[address(msg.sender)]
                        require stor3 + (0 / claimedEggs[address(msg.sender)]) >= stor3
                        require stor3 + (0 / claimedEggs[address(msg.sender)])
                        if not stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]):
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)])
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]) / stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]) == 4
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 <= stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)])) - (4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor3
                        require stor3 * claimedEggs[address(msg.sender)] / stor3 == claimedEggs[address(msg.sender)]
                        require stor3 * claimedEggs[address(msg.sender)] >= 0
                        require claimedEggs[address(msg.sender)]
                        require stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) >= stor3
                        require stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        if not stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]):
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) == 4
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 <= stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])) - (4 * stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require stor2
                    require stor2 * marketEggs / stor2 == marketEggs
                    if not stor3:
                        require stor2 * marketEggs >= stor2 * marketEggs
                        require claimedEggs[address(msg.sender)]
                        require stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) >= stor3
                        require stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                        if not stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]):
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) == 4
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / 100 <= stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])) - (4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor3
                        require stor3 * claimedEggs[address(msg.sender)] / stor3 == claimedEggs[address(msg.sender)]
                        require (stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) >= stor2 * marketEggs
                        require claimedEggs[address(msg.sender)]
                        require stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) >= stor3
                        require stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                        if not stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]):
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) == 4
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 <= stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])) - (4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
        else:
            require EGGS_TO_HATCH_1SHRIMP
            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)].field_0
            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) >= claimedEggs[address(msg.sender)]
            if not stor2:
                if not stor3:
                    require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                    require stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) >= stor3
                    require stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                    if not 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)):
                        if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                        else:
                            require hatcheryShrimp[address(msg.sender)].field_0 / 3
                            require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                            hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                        call ceoAddress with:
                             gas 2300 wei
                        require ext_call.success
                        require 0 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                        call msg.sender with:
                           value 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                        require 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) == 4
                        if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                        else:
                            require hatcheryShrimp[address(msg.sender)].field_0 / 3
                            require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                            hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                        call ceoAddress with:
                           value 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / 100 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                        call msg.sender with:
                           value (0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))) - (4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require stor3
                    require (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / stor3 == claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                    require (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) >= 0
                    require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                    require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) >= stor3
                    require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                    if not 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)):
                        if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                        else:
                            require hatcheryShrimp[address(msg.sender)].field_0 / 3
                            require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                            hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                        call ceoAddress with:
                             gas 2300 wei
                        require ext_call.success
                        require 0 <= 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                        call msg.sender with:
                           value 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                        require 4 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) == 4
                        if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                        else:
                            require hatcheryShrimp[address(msg.sender)].field_0 / 3
                            require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                            hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                        call ceoAddress with:
                           value 4 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require 4 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / 100 <= 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                        call msg.sender with:
                           value (0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))) - (4 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require stor2
                require stor2 * eth.balance(this.address) / stor2 == eth.balance(this.address)
                if not stor2:
                    if not stor3:
                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                        require stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) >= stor3
                        require stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                        if not stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)):
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) == 4
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / 100 <= stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))) - (4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor3
                        require (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / stor3 == claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                        require (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) >= 0
                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                        require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) >= stor3
                        require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                        if not stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)):
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) == 4
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / 100 <= stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))) - (4 * stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require stor2
                    require stor2 * marketEggs / stor2 == marketEggs
                    if not stor3:
                        require stor2 * marketEggs >= stor2 * marketEggs
                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                        require stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) >= stor3
                        require stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                        if not stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)):
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) == 4
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / 100 <= stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))) - (4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor3
                        require (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / stor3 == claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                        require (stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) >= stor2 * marketEggs
                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                        require stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) >= stor3
                        require stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                        if not stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)):
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) == 4
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / 100 <= stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0))) - (4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)].field_0)) / 100) wei
                                 gas 2300 * is_zero(value) wei
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            if not stor2:
                if not stor3:
                    require claimedEggs[address(msg.sender)]
                    require stor3 + (0 / claimedEggs[address(msg.sender)]) >= stor3
                    require stor3 + (0 / claimedEggs[address(msg.sender)])
                    if not 0 / stor3 + (0 / claimedEggs[address(msg.sender)]):
                        if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                        else:
                            require hatcheryShrimp[address(msg.sender)].field_0 / 3
                            require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                            hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                             gas 2300 wei
                        require ext_call.success
                        require 0 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor3 + (0 / claimedEggs[address(msg.sender)])
                        require 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) == 4
                        if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                        else:
                            require hatcheryShrimp[address(msg.sender)].field_0 / 3
                            require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                            hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                           value 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value (0 / stor3 + (0 / claimedEggs[address(msg.sender)])) - (4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require stor3
                    require stor3 * claimedEggs[address(msg.sender)] / stor3 == claimedEggs[address(msg.sender)]
                    require stor3 * claimedEggs[address(msg.sender)] >= 0
                    require claimedEggs[address(msg.sender)]
                    require stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) >= stor3
                    require stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                    if not 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]):
                        if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                        else:
                            require hatcheryShrimp[address(msg.sender)].field_0 / 3
                            require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                            hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                             gas 2300 wei
                        require ext_call.success
                        require 0 <= 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        require 4 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) == 4
                        if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                        else:
                            require hatcheryShrimp[address(msg.sender)].field_0 / 3
                            require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                            hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                           value 4 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require 4 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 <= 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value (0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])) - (4 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require stor2
                require stor2 * eth.balance(this.address) / stor2 == eth.balance(this.address)
                if not stor2:
                    if not stor3:
                        require claimedEggs[address(msg.sender)]
                        require stor3 + (0 / claimedEggs[address(msg.sender)]) >= stor3
                        require stor3 + (0 / claimedEggs[address(msg.sender)])
                        if not stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]):
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)])
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]) / stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]) == 4
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 <= stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)])) - (4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor3
                        require stor3 * claimedEggs[address(msg.sender)] / stor3 == claimedEggs[address(msg.sender)]
                        require stor3 * claimedEggs[address(msg.sender)] >= 0
                        require claimedEggs[address(msg.sender)]
                        require stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) >= stor3
                        require stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        if not stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]):
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) == 4
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 <= stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])) - (4 * stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require stor2
                    require stor2 * marketEggs / stor2 == marketEggs
                    if not stor3:
                        require stor2 * marketEggs >= stor2 * marketEggs
                        require claimedEggs[address(msg.sender)]
                        require stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) >= stor3
                        require stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                        if not stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]):
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) == 4
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / 100 <= stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])) - (4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor3
                        require stor3 * claimedEggs[address(msg.sender)] / stor3 == claimedEggs[address(msg.sender)]
                        require (stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) >= stor2 * marketEggs
                        require claimedEggs[address(msg.sender)]
                        require stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) >= stor3
                        require stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                        if not stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]):
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) == 4
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 <= stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])) - (4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
        else:
            require block.timestamp - lastHatch[address(msg.sender)]
            require (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)].field_0
            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) >= claimedEggs[address(msg.sender)]
            if not stor2:
                if not stor3:
                    require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                    require stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) >= stor3
                    require stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                    if not 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)):
                        if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                        else:
                            require hatcheryShrimp[address(msg.sender)].field_0 / 3
                            require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                            hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                        call ceoAddress with:
                             gas 2300 wei
                        require ext_call.success
                        require 0 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                        call msg.sender with:
                           value 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                        require 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) == 4
                        if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                        else:
                            require hatcheryShrimp[address(msg.sender)].field_0 / 3
                            require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                            hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                        call ceoAddress with:
                           value 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / 100 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                        call msg.sender with:
                           value (0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))) - (4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require stor3
                    require (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / stor3 == claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                    require (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) >= 0
                    require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                    require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) >= stor3
                    require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                    if not 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)):
                        if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                        else:
                            require hatcheryShrimp[address(msg.sender)].field_0 / 3
                            require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                            hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                        call ceoAddress with:
                             gas 2300 wei
                        require ext_call.success
                        require 0 <= 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                        call msg.sender with:
                           value 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                        require 4 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) == 4
                        if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                        else:
                            require hatcheryShrimp[address(msg.sender)].field_0 / 3
                            require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                            hatcheryShrimp[address(msg.sender)].field_0 = 0
                            hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                        call ceoAddress with:
                           value 4 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require 4 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / 100 <= 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                        call msg.sender with:
                           value (0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))) - (4 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require stor2
                require stor2 * eth.balance(this.address) / stor2 == eth.balance(this.address)
                if not stor2:
                    if not stor3:
                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                        require stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) >= stor3
                        require stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                        if not stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)):
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) == 4
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / 100 <= stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))) - (4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor3
                        require (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / stor3 == claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                        require (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) >= 0
                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                        require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) >= stor3
                        require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                        if not stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)):
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) == 4
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / 100 <= stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))) - (4 * stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require stor2
                    require stor2 * marketEggs / stor2 == marketEggs
                    if not stor3:
                        require stor2 * marketEggs >= stor2 * marketEggs
                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                        require stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) >= stor3
                        require stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                        if not stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)):
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) == 4
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / 100 <= stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))) - (4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor3
                        require (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / stor3 == claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                        require (stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) >= stor2 * marketEggs
                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                        require stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) >= stor3
                        require stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                        if not stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)):
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                            call ceoAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) == 4
                            if not hatcheryShrimp[address(msg.sender)].field_0 / 3:
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                            else:
                                require hatcheryShrimp[address(msg.sender)].field_0 / 3
                                require 2 * hatcheryShrimp[address(msg.sender)].field_0 / 3 / hatcheryShrimp[address(msg.sender)].field_0 / 3 == 2
                                hatcheryShrimp[address(msg.sender)].field_0 = 0
                                hatcheryShrimp[address(msg.sender)].field_1 = uint255(hatcheryShrimp[address(msg.sender)].field_0 / 3)
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / 100 <= stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0))) - (4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0 * stor3) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0 * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)].field_0) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)].field_0)) / 100) wei
                                 gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
