contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address stor0;
address stor1;
uint256 EGGS_TO_HATCH_1SHRIMP;
uint256 VRF_EGG_COST;
uint256 STARTING_SHRIMP;
uint256 stor5;
uint256 stor6;
uint256 potDrainTime;
uint256 POT_DRAIN_INCREMENT;
uint256 POT_DRAIN_MAX;
uint256 HATCH_COOLDOWN_MAX;
uint8 initialized;
address ceoAddress; offset 8
address dev2Address;
mapping of uint256 hatchCooldown;
mapping of uint256 hatcheryShrimp;
mapping of uint256 claimedEggs;
mapping of uint256 lastHatch;
mapping of uint8 stor17;
uint256 marketEggs;
address ethVerifyAddress;
uint256 lastBidTime;
address currentWinnerAddress;
uint256 potEth;
uint256 totalHatcheryShrimp;
uint256 prizeEth;

function hasClaimedFree(address arg1) {
    return bool(stor17[arg1])
}

function POT_DRAIN_MAX() {
    return POT_DRAIN_MAX
}

function ethVerify() {
    return ethVerifyAddress
}

function ceoAddress() {
    return ceoAddress
}

function prizeEth() {
    return prizeEth
}

function initialized() {
    return bool(initialized)
}

function potEth() {
    return potEth
}

function marketEggs() {
    return marketEggs
}

function potDrainTime() {
    return potDrainTime
}

function lastHatch(address arg1) {
    return lastHatch[arg1]
}

function lastBidTime() {
    return lastBidTime
}

function totalHatcheryShrimp() {
    return totalHatcheryShrimp
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

function dev2() {
    return dev2Address
}

function VRF_EGG_COST() {
    return VRF_EGG_COST
}

function currentWinner() {
    return currentWinnerAddress
}

function POT_DRAIN_INCREMENT() {
    return POT_DRAIN_INCREMENT
}

function hatchCooldown(address arg1) {
    return hatchCooldown[arg1]
}

function getMyShrimp() {
    return hatcheryShrimp[address(msg.sender)]
}

function HATCH_COOLDOWN_MAX() {
    return HATCH_COOLDOWN_MAX
}

function STARTING_SHRIMP() {
    return STARTING_SHRIMP
}

function _fallback() payable {
  stop
}

function devFee2(uint256 arg1) {
    return (arg1 / 100)
}

function getPotCost() {
    return (totalHatcheryShrimp / 100)
}

function devFee(uint256 arg1) {
    if not arg1:
        return 0
    require arg1
    require 4 * arg1 / arg1 == 4
    return (4 * arg1 / 100)
}

function potFee(uint256 arg1) {
    if not arg1:
        return 0
    require arg1
    require 20 * arg1 / arg1 == 20
    return (20 * arg1 / 100)
}

function seedMarket(uint256 arg1) payable {
    require msg.sender == ceoAddress
    require not initialized
    initialized = 1
    marketEggs = arg1
    lastBidTime = block.timestamp
}

function isHatchOnCooldown() {
    require lastHatch[address(msg.sender)] + hatchCooldown[address(msg.sender)] >= lastHatch[address(msg.sender)]
    return (lastHatch[address(msg.sender)] + hatchCooldown[address(msg.sender)] < block.timestamp)
}

function finalizeIfNecessary() {
    require lastBidTime + potDrainTime >= lastBidTime
    if lastBidTime + potDrainTime < block.timestamp:
        call currentWinnerAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        initialized = 0
}

function getHatchCooldown(uint256 arg1) {
    if arg1 >= marketEggs / 50:
        return HATCH_COOLDOWN_MAX
    if not HATCH_COOLDOWN_MAX:
        if marketEggs / 50:
            return (0 / marketEggs / 50)
    else:
        if HATCH_COOLDOWN_MAX:
            if HATCH_COOLDOWN_MAX * arg1 / HATCH_COOLDOWN_MAX == arg1:
                if marketEggs / 50:
                    return (HATCH_COOLDOWN_MAX * arg1 / marketEggs / 50)
    revert
}

function getEggsSinceLastHatch(address arg1) {
    require lastHatch[address(arg1)] <= block.timestamp
    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(arg1)]:
        if not EGGS_TO_HATCH_1SHRIMP:
            return 0
        if EGGS_TO_HATCH_1SHRIMP:
            if EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(arg1)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(arg1)]:
                return (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(arg1)])
    else:
        if not block.timestamp - lastHatch[address(arg1)]:
            return 0
        if block.timestamp - lastHatch[address(arg1)]:
            if (block.timestamp * hatcheryShrimp[address(arg1)]) - (lastHatch[address(arg1)] * hatcheryShrimp[address(arg1)]) / block.timestamp - lastHatch[address(arg1)] == hatcheryShrimp[address(arg1)]:
                return ((block.timestamp * hatcheryShrimp[address(arg1)]) - (lastHatch[address(arg1)] * hatcheryShrimp[address(arg1)]))
    revert
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require not initialized
    require msg.sender == stor0
    require ext_code.size(ethVerifyAddress)
    call ethVerifyAddress.verifiedUsers(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require VRF_EGG_COST
    require claimedEggs[address(arg1)] + (arg2 / VRF_EGG_COST) >= claimedEggs[address(arg1)]
    require claimedEggs[address(arg1)] + (arg2 / VRF_EGG_COST) <= 1001 * EGGS_TO_HATCH_1SHRIMP
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require VRF_EGG_COST
    require claimedEggs[address(arg1)] + (arg2 / VRF_EGG_COST) >= claimedEggs[address(arg1)]
    claimedEggs[address(arg1)] += arg2 / VRF_EGG_COST
}

function getMyEggs() {
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1SHRIMP:
            if claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]:
                return claimedEggs[address(msg.sender)]
        else:
            if EGGS_TO_HATCH_1SHRIMP:
                if EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]:
                    if claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]:
                        return (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            if claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]:
                return claimedEggs[address(msg.sender)]
        else:
            if block.timestamp - lastHatch[address(msg.sender)]:
                if (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]:
                    if claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]:
                        return (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
    revert
}

function calculateTrade(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not stor5:
        if not stor6:
            if arg1:
                if stor6 + (0 / arg1) >= stor6:
                    if stor6 + (0 / arg1):
                        return (0 / stor6 + (0 / arg1))
        else:
            if stor6:
                if stor6 * arg1 / stor6 == arg1:
                    if stor6 * arg1 >= 0:
                        if arg1:
                            if stor6 + (stor6 * arg1 / arg1) >= stor6:
                                if stor6 + (stor6 * arg1 / arg1):
                                    return (0 / stor6 + (stor6 * arg1 / arg1))
    else:
        if stor5:
            if stor5 * arg3 / stor5 == arg3:
                if not stor5:
                    if not stor6:
                        if arg1:
                            if stor6 + (0 / arg1) >= stor6:
                                if stor6 + (0 / arg1):
                                    return (stor5 * arg3 / stor6 + (0 / arg1))
                    else:
                        if stor6:
                            if stor6 * arg1 / stor6 == arg1:
                                if stor6 * arg1 >= 0:
                                    if arg1:
                                        if stor6 + (stor6 * arg1 / arg1) >= stor6:
                                            if stor6 + (stor6 * arg1 / arg1):
                                                return (stor5 * arg3 / stor6 + (stor6 * arg1 / arg1))
                else:
                    if stor5:
                        if stor5 * arg2 / stor5 == arg2:
                            if not stor6:
                                if stor5 * arg2 >= stor5 * arg2:
                                    if arg1:
                                        if stor6 + (stor5 * arg2 / arg1) >= stor6:
                                            if stor6 + (stor5 * arg2 / arg1):
                                                return (stor5 * arg3 / stor6 + (stor5 * arg2 / arg1))
                            else:
                                if stor6:
                                    if stor6 * arg1 / stor6 == arg1:
                                        if (stor5 * arg2) + (stor6 * arg1) >= stor5 * arg2:
                                            if arg1:
                                                if stor6 + ((stor5 * arg2) + (stor6 * arg1) / arg1) >= stor6:
                                                    if stor6 + ((stor5 * arg2) + (stor6 * arg1) / arg1):
                                                        return (stor5 * arg3 / stor6 + ((stor5 * arg2) + (stor6 * arg1) / arg1))
    revert
}

function calculateEggBuy(uint256 arg1, uint256 arg2) {
    require prizeEth <= arg2
    if not stor5:
        if not stor6:
            if arg1:
                if stor6 + (0 / arg1) >= stor6:
                    if stor6 + (0 / arg1):
                        return (0 / stor6 + (0 / arg1))
        else:
            if stor6:
                if stor6 * arg1 / stor6 == arg1:
                    if stor6 * arg1 >= 0:
                        if arg1:
                            if stor6 + (stor6 * arg1 / arg1) >= stor6:
                                if stor6 + (stor6 * arg1 / arg1):
                                    return (0 / stor6 + (stor6 * arg1 / arg1))
    else:
        if stor5:
            if stor5 * marketEggs / stor5 == marketEggs:
                if not stor5:
                    if not stor6:
                        if arg1:
                            if stor6 + (0 / arg1) >= stor6:
                                if stor6 + (0 / arg1):
                                    return (stor5 * marketEggs / stor6 + (0 / arg1))
                    else:
                        if stor6:
                            if stor6 * arg1 / stor6 == arg1:
                                if stor6 * arg1 >= 0:
                                    if arg1:
                                        if stor6 + (stor6 * arg1 / arg1) >= stor6:
                                            if stor6 + (stor6 * arg1 / arg1):
                                                return (stor5 * marketEggs / stor6 + (stor6 * arg1 / arg1))
                else:
                    if stor5:
                        if (arg2 * stor5) - (prizeEth * stor5) / stor5 == arg2 - prizeEth:
                            if not stor6:
                                if arg1:
                                    if stor6 + ((arg2 * stor5) - (prizeEth * stor5) / arg1) >= stor6:
                                        if stor6 + ((arg2 * stor5) - (prizeEth * stor5) / arg1):
                                            return (stor5 * marketEggs / stor6 + ((arg2 * stor5) - (prizeEth * stor5) / arg1))
                            else:
                                if stor6:
                                    if stor6 * arg1 / stor6 == arg1:
                                        if stor6 * arg1 >= 0:
                                            if arg1:
                                                if stor6 + ((arg2 * stor5) - (prizeEth * stor5) + (stor6 * arg1) / arg1) >= stor6:
                                                    if stor6 + ((arg2 * stor5) - (prizeEth * stor5) + (stor6 * arg1) / arg1):
                                                        return (stor5 * marketEggs / stor6 + ((arg2 * stor5) - (prizeEth * stor5) + (stor6 * arg1) / arg1))
    revert
}

function calculateEggBuySimple(uint256 arg1) {
    require prizeEth <= eth.balance(this.address)
    if not stor5:
        if not stor6:
            if arg1:
                if stor6 + (0 / arg1) >= stor6:
                    if stor6 + (0 / arg1):
                        return (0 / stor6 + (0 / arg1))
        else:
            if stor6:
                if stor6 * arg1 / stor6 == arg1:
                    if stor6 * arg1 >= 0:
                        if arg1:
                            if stor6 + (stor6 * arg1 / arg1) >= stor6:
                                if stor6 + (stor6 * arg1 / arg1):
                                    return (0 / stor6 + (stor6 * arg1 / arg1))
    else:
        if stor5:
            if stor5 * marketEggs / stor5 == marketEggs:
                if not stor5:
                    if not stor6:
                        if arg1:
                            if stor6 + (0 / arg1) >= stor6:
                                if stor6 + (0 / arg1):
                                    return (stor5 * marketEggs / stor6 + (0 / arg1))
                    else:
                        if stor6:
                            if stor6 * arg1 / stor6 == arg1:
                                if stor6 * arg1 >= 0:
                                    if arg1:
                                        if stor6 + (stor6 * arg1 / arg1) >= stor6:
                                            if stor6 + (stor6 * arg1 / arg1):
                                                return (stor5 * marketEggs / stor6 + (stor6 * arg1 / arg1))
                else:
                    if stor5:
                        if (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - prizeEth:
                            if not stor6:
                                if arg1:
                                    if stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / arg1) >= stor6:
                                        if stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / arg1):
                                            return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / arg1))
                            else:
                                if stor6:
                                    if stor6 * arg1 / stor6 == arg1:
                                        if stor6 * arg1 >= 0:
                                            if arg1:
                                                if stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * arg1) / arg1) >= stor6:
                                                    if stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * arg1) / arg1):
                                                        return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * arg1) / arg1))
    revert
}

function calculateEggSell(uint256 arg1) {
    require prizeEth <= eth.balance(this.address)
    if not stor5:
        if not stor6:
            if arg1:
                if stor6 + (0 / arg1) >= stor6:
                    if stor6 + (0 / arg1):
                        return (0 / stor6 + (0 / arg1))
        else:
            if stor6:
                if stor6 * arg1 / stor6 == arg1:
                    if stor6 * arg1 >= 0:
                        if arg1:
                            if stor6 + (stor6 * arg1 / arg1) >= stor6:
                                if stor6 + (stor6 * arg1 / arg1):
                                    return (0 / stor6 + (stor6 * arg1 / arg1))
    else:
        if stor5:
            if (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - prizeEth:
                if not stor5:
                    if not stor6:
                        if arg1:
                            if stor6 + (0 / arg1) >= stor6:
                                if stor6 + (0 / arg1):
                                    return ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / arg1))
                    else:
                        if stor6:
                            if stor6 * arg1 / stor6 == arg1:
                                if stor6 * arg1 >= 0:
                                    if arg1:
                                        if stor6 + (stor6 * arg1 / arg1) >= stor6:
                                            if stor6 + (stor6 * arg1 / arg1):
                                                return ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * arg1 / arg1))
                else:
                    if stor5:
                        if stor5 * marketEggs / stor5 == marketEggs:
                            if not stor6:
                                if stor5 * marketEggs >= stor5 * marketEggs:
                                    if arg1:
                                        if stor6 + (stor5 * marketEggs / arg1) >= stor6:
                                            if stor6 + (stor5 * marketEggs / arg1):
                                                return ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / arg1))
                            else:
                                if stor6:
                                    if stor6 * arg1 / stor6 == arg1:
                                        if (stor5 * marketEggs) + (stor6 * arg1) >= stor5 * marketEggs:
                                            if arg1:
                                                if stor6 + ((stor5 * marketEggs) + (stor6 * arg1) / arg1) >= stor6:
                                                    if stor6 + ((stor5 * marketEggs) + (stor6 * arg1) / arg1):
                                                        return ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * arg1) / arg1))
    revert
}

function stealPot() {
    if initialized:
        require initialized
        require lastHatch[address(msg.sender)] <= block.timestamp
        if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
            if not EGGS_TO_HATCH_1SHRIMP:
                require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                require EGGS_TO_HATCH_1SHRIMP
                require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                claimedEggs[address(msg.sender)] = 0
                lastHatch[address(msg.sender)] = block.timestamp
                hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                require msg.sender != 0
                require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                marketEggs += claimedEggs[address(msg.sender)] / 7
            else:
                require EGGS_TO_HATCH_1SHRIMP
                require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                require EGGS_TO_HATCH_1SHRIMP
                require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                claimedEggs[address(msg.sender)] = 0
                lastHatch[address(msg.sender)] = block.timestamp
                hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                require msg.sender != 0
                require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
        else:
            if not block.timestamp - lastHatch[address(msg.sender)]:
                require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                require EGGS_TO_HATCH_1SHRIMP
                require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                claimedEggs[address(msg.sender)] = 0
                lastHatch[address(msg.sender)] = block.timestamp
                hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                require msg.sender != 0
                require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                marketEggs += claimedEggs[address(msg.sender)] / 7
            else:
                require block.timestamp - lastHatch[address(msg.sender)]
                require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                require EGGS_TO_HATCH_1SHRIMP
                require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                claimedEggs[address(msg.sender)] = 0
                lastHatch[address(msg.sender)] = block.timestamp
                hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                require msg.sender != 0
                require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
        require totalHatcheryShrimp / 100 <= hatcheryShrimp[address(msg.sender)]
        hatcheryShrimp[address(msg.sender)] -= totalHatcheryShrimp / 100
        require totalHatcheryShrimp / 100 <= totalHatcheryShrimp
        totalHatcheryShrimp -= totalHatcheryShrimp / 100
        require lastBidTime + potDrainTime >= lastBidTime
        if lastBidTime + potDrainTime < block.timestamp:
            call currentWinnerAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            initialized = 0
        if initialized:
            if currentWinnerAddress != msg.sender:
                require lastBidTime + potDrainTime >= lastBidTime
                require block.timestamp <= lastBidTime + potDrainTime
                require POT_DRAIN_INCREMENT >= 0
                potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                if potDrainTime > POT_DRAIN_MAX:
                    potDrainTime = POT_DRAIN_MAX
                lastBidTime = block.timestamp
                currentWinnerAddress = msg.sender
        hatchCooldown[address(msg.sender)] = 0
}

function hatchEggs(address arg1) {
    require lastHatch[address(msg.sender)] + hatchCooldown[address(msg.sender)] >= lastHatch[address(msg.sender)]
    require lastHatch[address(msg.sender)] + hatchCooldown[address(msg.sender)] < block.timestamp
    require initialized
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1SHRIMP:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1SHRIMP
            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
            require arg1 != msg.sender
            if arg1:
                require claimedEggs[address(arg1)] + (claimedEggs[address(msg.sender)] / 7) >= claimedEggs[address(arg1)]
                claimedEggs[address(arg1)] += claimedEggs[address(msg.sender)] / 7
            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] / 7
        else:
            require EGGS_TO_HATCH_1SHRIMP
            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1SHRIMP
            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
            require arg1 != msg.sender
            if arg1:
                require claimedEggs[address(arg1)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= claimedEggs[address(arg1)]
                claimedEggs[address(arg1)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1SHRIMP
            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
            require arg1 != msg.sender
            if arg1:
                require claimedEggs[address(arg1)] + (claimedEggs[address(msg.sender)] / 7) >= claimedEggs[address(arg1)]
                claimedEggs[address(arg1)] += claimedEggs[address(msg.sender)] / 7
            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] / 7
        else:
            require block.timestamp - lastHatch[address(msg.sender)]
            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1SHRIMP
            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
            require arg1 != msg.sender
            if arg1:
                require claimedEggs[address(arg1)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= claimedEggs[address(arg1)]
                claimedEggs[address(arg1)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
}

function getFreeEggs() {
    require prizeEth <= eth.balance(this.address)
    if not stor5:
        if not stor6:
            require eth.balance(this.address) / 400
            require stor6 + (0 / eth.balance(this.address) / 400) >= stor6
            require stor6 + (0 / eth.balance(this.address) / 400)
            require prizeEth <= eth.balance(this.address)
            if not stor5:
                if not stor6:
                    require stor6 >= stor6
                    require stor6
                    if 0 / stor6 + (0 / eth.balance(this.address) / 400) < 0 / stor6:
                        return (0 / stor6 + (0 / eth.balance(this.address) / 400))
                    return (0 / stor6)
                require stor6
                require 10^16 * stor6 / stor6 == 10^16
                require 10^16 * stor6 >= 0
                require stor6 + (10^16 * stor6 / 10^16) >= stor6
                require stor6 + (10^16 * stor6 / 10^16)
                if 0 / stor6 + (0 / eth.balance(this.address) / 400) < 0 / stor6 + (10^16 * stor6 / 10^16):
                    return (0 / stor6 + (0 / eth.balance(this.address) / 400))
                return (0 / stor6 + (10^16 * stor6 / 10^16))
            require stor5
            require stor5 * marketEggs / stor5 == marketEggs
            if not stor5:
                if not stor6:
                    require stor6 >= stor6
                    require stor6
                    if 0 / stor6 + (0 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6:
                        return (0 / stor6 + (0 / eth.balance(this.address) / 400))
                    return (stor5 * marketEggs / stor6)
                require stor6
                require 10^16 * stor6 / stor6 == 10^16
                require 10^16 * stor6 >= 0
                require stor6 + (10^16 * stor6 / 10^16) >= stor6
                require stor6 + (10^16 * stor6 / 10^16)
                if 0 / stor6 + (0 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16):
                    return (0 / stor6 + (0 / eth.balance(this.address) / 400))
                return (stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16))
            require stor5
            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - prizeEth
            if not stor6:
                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16) >= stor6
                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)
                if 0 / stor6 + (0 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16):
                    return (0 / stor6 + (0 / eth.balance(this.address) / 400))
                return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16))
            require stor6
            require 10^16 * stor6 / stor6 == 10^16
            require 10^16 * stor6 >= 0
            require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16) >= stor6
            require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)
            if 0 / stor6 + (0 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16):
                return (0 / stor6 + (0 / eth.balance(this.address) / 400))
        else:
            require stor6
            require stor6 * eth.balance(this.address) / 400 / stor6 == eth.balance(this.address) / 400
            require stor6 * eth.balance(this.address) / 400 >= 0
            require eth.balance(this.address) / 400
            require stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) >= stor6
            require stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)
            require prizeEth <= eth.balance(this.address)
            if not stor5:
                if not stor6:
                    require stor6 >= stor6
                    require stor6
                    if 0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < 0 / stor6:
                        return (0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400))
                    return (0 / stor6)
                require stor6
                require 10^16 * stor6 / stor6 == 10^16
                require 10^16 * stor6 >= 0
                require stor6 + (10^16 * stor6 / 10^16) >= stor6
                require stor6 + (10^16 * stor6 / 10^16)
                if 0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < 0 / stor6 + (10^16 * stor6 / 10^16):
                    return (0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400))
                return (0 / stor6 + (10^16 * stor6 / 10^16))
            require stor5
            require stor5 * marketEggs / stor5 == marketEggs
            if not stor5:
                if not stor6:
                    require stor6 >= stor6
                    require stor6
                    if 0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6:
                        return (0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400))
                    return (stor5 * marketEggs / stor6)
                require stor6
                require 10^16 * stor6 / stor6 == 10^16
                require 10^16 * stor6 >= 0
                require stor6 + (10^16 * stor6 / 10^16) >= stor6
                require stor6 + (10^16 * stor6 / 10^16)
                if 0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16):
                    return (0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400))
                return (stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16))
            require stor5
            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - prizeEth
            if not stor6:
                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16) >= stor6
                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)
                if 0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16):
                    return (0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400))
                return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16))
            require stor6
            require 10^16 * stor6 / stor6 == 10^16
            require 10^16 * stor6 >= 0
            require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16) >= stor6
            require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)
            if 0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16):
                return (0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400))
    else:
        require stor5
        require stor5 * marketEggs / stor5 == marketEggs
        if not stor5:
            if not stor6:
                require eth.balance(this.address) / 400
                require stor6 + (0 / eth.balance(this.address) / 400) >= stor6
                require stor6 + (0 / eth.balance(this.address) / 400)
                require prizeEth <= eth.balance(this.address)
                if not stor5:
                    if not stor6:
                        require stor6 >= stor6
                        require stor6
                        if stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400) < 0 / stor6:
                            return (stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400))
                        return (0 / stor6)
                    require stor6
                    require 10^16 * stor6 / stor6 == 10^16
                    require 10^16 * stor6 >= 0
                    require stor6 + (10^16 * stor6 / 10^16) >= stor6
                    require stor6 + (10^16 * stor6 / 10^16)
                    if stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400) < 0 / stor6 + (10^16 * stor6 / 10^16):
                        return (stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400))
                    return (0 / stor6 + (10^16 * stor6 / 10^16))
                require stor5
                require stor5 * marketEggs / stor5 == marketEggs
                if not stor5:
                    if not stor6:
                        require stor6 >= stor6
                        require stor6
                        if stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6:
                            return (stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400))
                        return (stor5 * marketEggs / stor6)
                    require stor6
                    require 10^16 * stor6 / stor6 == 10^16
                    require 10^16 * stor6 >= 0
                    require stor6 + (10^16 * stor6 / 10^16) >= stor6
                    require stor6 + (10^16 * stor6 / 10^16)
                    if stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16):
                        return (stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400))
                    return (stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16))
                require stor5
                require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - prizeEth
                if not stor6:
                    require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16) >= stor6
                    require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)
                    if stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16):
                        return (stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400))
                    return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16))
                require stor6
                require 10^16 * stor6 / stor6 == 10^16
                require 10^16 * stor6 >= 0
                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16) >= stor6
                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)
                if stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16):
                    return (stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400))
            else:
                require stor6
                require stor6 * eth.balance(this.address) / 400 / stor6 == eth.balance(this.address) / 400
                require stor6 * eth.balance(this.address) / 400 >= 0
                require eth.balance(this.address) / 400
                require stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) >= stor6
                require stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)
                require prizeEth <= eth.balance(this.address)
                if not stor5:
                    if not stor6:
                        require stor6 >= stor6
                        require stor6
                        if stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < 0 / stor6:
                            return (stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400))
                        return (0 / stor6)
                    require stor6
                    require 10^16 * stor6 / stor6 == 10^16
                    require 10^16 * stor6 >= 0
                    require stor6 + (10^16 * stor6 / 10^16) >= stor6
                    require stor6 + (10^16 * stor6 / 10^16)
                    if stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < 0 / stor6 + (10^16 * stor6 / 10^16):
                        return (stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400))
                    return (0 / stor6 + (10^16 * stor6 / 10^16))
                require stor5
                require stor5 * marketEggs / stor5 == marketEggs
                if not stor5:
                    if not stor6:
                        require stor6 >= stor6
                        require stor6
                        if stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6:
                            return (stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400))
                        return (stor5 * marketEggs / stor6)
                    require stor6
                    require 10^16 * stor6 / stor6 == 10^16
                    require 10^16 * stor6 >= 0
                    require stor6 + (10^16 * stor6 / 10^16) >= stor6
                    require stor6 + (10^16 * stor6 / 10^16)
                    if stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16):
                        return (stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400))
                    return (stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16))
                require stor5
                require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - prizeEth
                if not stor6:
                    require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16) >= stor6
                    require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)
                    if stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16):
                        return (stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400))
                    return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16))
                require stor6
                require 10^16 * stor6 / stor6 == 10^16
                require 10^16 * stor6 >= 0
                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16) >= stor6
                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)
                if stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16):
                    return (stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400))
        else:
            require stor5
            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - prizeEth
            if not stor6:
                require eth.balance(this.address) / 400
                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400) >= stor6
                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400)
                require prizeEth <= eth.balance(this.address)
                if not stor5:
                    if not stor6:
                        require stor6 >= stor6
                        require stor6
                        if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400) < 0 / stor6:
                            return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400))
                        return (0 / stor6)
                    require stor6
                    require 10^16 * stor6 / stor6 == 10^16
                    require 10^16 * stor6 >= 0
                    require stor6 + (10^16 * stor6 / 10^16) >= stor6
                    require stor6 + (10^16 * stor6 / 10^16)
                    if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400) < 0 / stor6 + (10^16 * stor6 / 10^16):
                        return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400))
                    return (0 / stor6 + (10^16 * stor6 / 10^16))
                require stor5
                require stor5 * marketEggs / stor5 == marketEggs
                if not stor5:
                    if not stor6:
                        require stor6 >= stor6
                        require stor6
                        if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6:
                            return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400))
                        return (stor5 * marketEggs / stor6)
                    require stor6
                    require 10^16 * stor6 / stor6 == 10^16
                    require 10^16 * stor6 >= 0
                    require stor6 + (10^16 * stor6 / 10^16) >= stor6
                    require stor6 + (10^16 * stor6 / 10^16)
                    if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16):
                        return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400))
                    return (stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16))
                require stor5
                require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - prizeEth
                if not stor6:
                    require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16) >= stor6
                    require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)
                    if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16):
                        return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400))
                    return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16))
                require stor6
                require 10^16 * stor6 / stor6 == 10^16
                require 10^16 * stor6 >= 0
                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16) >= stor6
                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)
                if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16):
                    return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400))
            else:
                require stor6
                require stor6 * eth.balance(this.address) / 400 / stor6 == eth.balance(this.address) / 400
                require stor6 * eth.balance(this.address) / 400 >= 0
                require eth.balance(this.address) / 400
                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400) >= stor6
                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400)
                require prizeEth <= eth.balance(this.address)
                if not stor5:
                    if not stor6:
                        require stor6 >= stor6
                        require stor6
                        if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400) < 0 / stor6:
                            return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400))
                        return (0 / stor6)
                    require stor6
                    require 10^16 * stor6 / stor6 == 10^16
                    require 10^16 * stor6 >= 0
                    require stor6 + (10^16 * stor6 / 10^16) >= stor6
                    require stor6 + (10^16 * stor6 / 10^16)
                    if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400) < 0 / stor6 + (10^16 * stor6 / 10^16):
                        return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400))
                    return (0 / stor6 + (10^16 * stor6 / 10^16))
                require stor5
                require stor5 * marketEggs / stor5 == marketEggs
                if not stor5:
                    if not stor6:
                        require stor6 >= stor6
                        require stor6
                        if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6:
                            return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400))
                        return (stor5 * marketEggs / stor6)
                    require stor6
                    require 10^16 * stor6 / stor6 == 10^16
                    require 10^16 * stor6 >= 0
                    require stor6 + (10^16 * stor6 / 10^16) >= stor6
                    require stor6 + (10^16 * stor6 / 10^16)
                    if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16):
                        return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400))
                    return (stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16))
                require stor5
                require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - prizeEth
                if not stor6:
                    require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16) >= stor6
                    require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)
                    if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16):
                        return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400))
                    return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16))
                require stor6
                require 10^16 * stor6 / stor6 == 10^16
                require 10^16 * stor6 >= 0
                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16) >= stor6
                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)
                if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16):
                    return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400))
    return (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16))
}

function buyEggs() payable {
    require initialized
    require msg.value <= eth.balance(this.address)
    require prizeEth <= eth.balance(this.address) - msg.value
    if not stor5:
        if not stor6:
            require msg.value
            require stor6 + (0 / msg.value) >= stor6
            require stor6 + (0 / msg.value)
            if not 0 / stor6 + (0 / msg.value):
                require 0 <= 0 / stor6 + (0 / msg.value)
                require 0 / stor6 + (0 / msg.value) / 100 <= 0 / stor6 + (0 / msg.value)
                if not msg.value:
                    call ceoAddress with:
                         gas 2300 wei
                else:
                    require msg.value
                    require 4 * msg.value / msg.value == 4
                    call ceoAddress with:
                       value 4 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call dev2Address with:
                   value msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require claimedEggs[address(msg.sender)] + (0 / stor6 + (0 / msg.value)) - (0 / stor6 + (0 / msg.value) / 100) >= claimedEggs[address(msg.sender)]
                claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (0 / stor6 + (0 / msg.value)) - (0 / stor6 + (0 / msg.value) / 100)
                if (0 / stor6 + (0 / msg.value)) - (0 / stor6 + (0 / msg.value) / 100) >= marketEggs / 50:
                    if HATCH_COOLDOWN_MAX >= hatchCooldown[address(msg.sender)]:
                        hatchCooldown[address(msg.sender)] = 0
                    else:
                        require HATCH_COOLDOWN_MAX <= hatchCooldown[address(msg.sender)]
                        hatchCooldown[address(msg.sender)] -= HATCH_COOLDOWN_MAX
                else:
                    if not HATCH_COOLDOWN_MAX:
                        require marketEggs / 50
                        if 0 / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                            hatchCooldown[address(msg.sender)] = 0
                        else:
                            require 0 / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                            hatchCooldown[address(msg.sender)] -= 0 / marketEggs / 50
                    else:
                        require HATCH_COOLDOWN_MAX
                        require (0 / stor6 + (0 / msg.value) * HATCH_COOLDOWN_MAX) - (0 / stor6 + (0 / msg.value) / 100 * HATCH_COOLDOWN_MAX) / HATCH_COOLDOWN_MAX == (0 / stor6 + (0 / msg.value)) - (0 / stor6 + (0 / msg.value) / 100)
                        require marketEggs / 50
                        if (0 / stor6 + (0 / msg.value) * HATCH_COOLDOWN_MAX) - (0 / stor6 + (0 / msg.value) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                            hatchCooldown[address(msg.sender)] = 0
                        else:
                            require (0 / stor6 + (0 / msg.value) * HATCH_COOLDOWN_MAX) - (0 / stor6 + (0 / msg.value) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                            hatchCooldown[address(msg.sender)] -= (0 / stor6 + (0 / msg.value) * HATCH_COOLDOWN_MAX) - (0 / stor6 + (0 / msg.value) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50
                if not totalHatcheryShrimp / 100:
                    if (0 / stor6 + (0 / msg.value)) - (0 / stor6 + (0 / msg.value) / 100) > 0:
                        require lastBidTime + potDrainTime >= lastBidTime
                        if lastBidTime + potDrainTime < block.timestamp:
                            call currentWinnerAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            initialized = 0
                        if initialized:
                            if currentWinnerAddress != msg.sender:
                                require lastBidTime + potDrainTime >= lastBidTime
                                require block.timestamp <= lastBidTime + potDrainTime
                                require POT_DRAIN_INCREMENT >= 0
                                potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                if potDrainTime > POT_DRAIN_MAX:
                                    potDrainTime = POT_DRAIN_MAX
                                lastBidTime = block.timestamp
                                currentWinnerAddress = msg.sender
                else:
                    require totalHatcheryShrimp / 100
                    require totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP / totalHatcheryShrimp / 100 == EGGS_TO_HATCH_1SHRIMP
                    if (0 / stor6 + (0 / msg.value)) - (0 / stor6 + (0 / msg.value) / 100) > totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP:
                        require lastBidTime + potDrainTime >= lastBidTime
                        if lastBidTime + potDrainTime < block.timestamp:
                            call currentWinnerAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            initialized = 0
                        if initialized:
                            if currentWinnerAddress != msg.sender:
                                require lastBidTime + potDrainTime >= lastBidTime
                                require block.timestamp <= lastBidTime + potDrainTime
                                require POT_DRAIN_INCREMENT >= 0
                                potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                if potDrainTime > POT_DRAIN_MAX:
                                    potDrainTime = POT_DRAIN_MAX
                                lastBidTime = block.timestamp
                                currentWinnerAddress = msg.sender
            else:
                require 0 / stor6 + (0 / msg.value)
                require 4 * 0 / stor6 + (0 / msg.value) / 0 / stor6 + (0 / msg.value) == 4
                require 4 * 0 / stor6 + (0 / msg.value) / 100 <= 0 / stor6 + (0 / msg.value)
                require (0 / stor6 + (0 / msg.value)) - (4 * 0 / stor6 + (0 / msg.value) / 100) / 100 <= (0 / stor6 + (0 / msg.value)) - (4 * 0 / stor6 + (0 / msg.value) / 100)
                if not msg.value:
                    call ceoAddress with:
                         gas 2300 wei
                else:
                    require msg.value
                    require 4 * msg.value / msg.value == 4
                    call ceoAddress with:
                       value 4 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call dev2Address with:
                   value msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require claimedEggs[address(msg.sender)] + (0 / stor6 + (0 / msg.value)) - (4 * 0 / stor6 + (0 / msg.value) / 100) - ((0 / stor6 + (0 / msg.value)) - (4 * 0 / stor6 + (0 / msg.value) / 100) / 100) >= claimedEggs[address(msg.sender)]
                claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (0 / stor6 + (0 / msg.value)) - (4 * 0 / stor6 + (0 / msg.value) / 100) - ((0 / stor6 + (0 / msg.value)) - (4 * 0 / stor6 + (0 / msg.value) / 100) / 100)
                if (0 / stor6 + (0 / msg.value)) - (4 * 0 / stor6 + (0 / msg.value) / 100) - ((0 / stor6 + (0 / msg.value)) - (4 * 0 / stor6 + (0 / msg.value) / 100) / 100) >= marketEggs / 50:
                    if HATCH_COOLDOWN_MAX >= hatchCooldown[address(msg.sender)]:
                        hatchCooldown[address(msg.sender)] = 0
                    else:
                        require HATCH_COOLDOWN_MAX <= hatchCooldown[address(msg.sender)]
                        hatchCooldown[address(msg.sender)] -= HATCH_COOLDOWN_MAX
                else:
                    if not HATCH_COOLDOWN_MAX:
                        require marketEggs / 50
                        if 0 / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                            hatchCooldown[address(msg.sender)] = 0
                        else:
                            require 0 / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                            hatchCooldown[address(msg.sender)] -= 0 / marketEggs / 50
                    else:
                        require HATCH_COOLDOWN_MAX
                        require (0 / stor6 + (0 / msg.value) * HATCH_COOLDOWN_MAX) - (4 * 0 / stor6 + (0 / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((0 / stor6 + (0 / msg.value)) - (4 * 0 / stor6 + (0 / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / HATCH_COOLDOWN_MAX == (0 / stor6 + (0 / msg.value)) - (4 * 0 / stor6 + (0 / msg.value) / 100) - ((0 / stor6 + (0 / msg.value)) - (4 * 0 / stor6 + (0 / msg.value) / 100) / 100)
                        require marketEggs / 50
                        if (0 / stor6 + (0 / msg.value) * HATCH_COOLDOWN_MAX) - (4 * 0 / stor6 + (0 / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((0 / stor6 + (0 / msg.value)) - (4 * 0 / stor6 + (0 / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                            hatchCooldown[address(msg.sender)] = 0
                        else:
                            require (0 / stor6 + (0 / msg.value) * HATCH_COOLDOWN_MAX) - (4 * 0 / stor6 + (0 / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((0 / stor6 + (0 / msg.value)) - (4 * 0 / stor6 + (0 / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                            hatchCooldown[address(msg.sender)] -= (0 / stor6 + (0 / msg.value) * HATCH_COOLDOWN_MAX) - (4 * 0 / stor6 + (0 / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((0 / stor6 + (0 / msg.value)) - (4 * 0 / stor6 + (0 / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50
                if not totalHatcheryShrimp / 100:
                    if (0 / stor6 + (0 / msg.value)) - (4 * 0 / stor6 + (0 / msg.value) / 100) - ((0 / stor6 + (0 / msg.value)) - (4 * 0 / stor6 + (0 / msg.value) / 100) / 100) > 0:
                        require lastBidTime + potDrainTime >= lastBidTime
                        if lastBidTime + potDrainTime < block.timestamp:
                            call currentWinnerAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            initialized = 0
                        if initialized:
                            if currentWinnerAddress != msg.sender:
                                require lastBidTime + potDrainTime >= lastBidTime
                                require block.timestamp <= lastBidTime + potDrainTime
                                require POT_DRAIN_INCREMENT >= 0
                                potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                if potDrainTime > POT_DRAIN_MAX:
                                    potDrainTime = POT_DRAIN_MAX
                                lastBidTime = block.timestamp
                                currentWinnerAddress = msg.sender
                else:
                    require totalHatcheryShrimp / 100
                    require totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP / totalHatcheryShrimp / 100 == EGGS_TO_HATCH_1SHRIMP
                    if (0 / stor6 + (0 / msg.value)) - (4 * 0 / stor6 + (0 / msg.value) / 100) - ((0 / stor6 + (0 / msg.value)) - (4 * 0 / stor6 + (0 / msg.value) / 100) / 100) > totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP:
                        require lastBidTime + potDrainTime >= lastBidTime
                        if lastBidTime + potDrainTime < block.timestamp:
                            call currentWinnerAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            initialized = 0
                        if initialized:
                            if currentWinnerAddress != msg.sender:
                                require lastBidTime + potDrainTime >= lastBidTime
                                require block.timestamp <= lastBidTime + potDrainTime
                                require POT_DRAIN_INCREMENT >= 0
                                potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                if potDrainTime > POT_DRAIN_MAX:
                                    potDrainTime = POT_DRAIN_MAX
                                lastBidTime = block.timestamp
                                currentWinnerAddress = msg.sender
        else:
            require stor6
            require stor6 * msg.value / stor6 == msg.value
            require stor6 * msg.value >= 0
            require msg.value
            require stor6 + (stor6 * msg.value / msg.value) >= stor6
            require stor6 + (stor6 * msg.value / msg.value)
            if not 0 / stor6 + (stor6 * msg.value / msg.value):
                require 0 <= 0 / stor6 + (stor6 * msg.value / msg.value)
                require 0 / stor6 + (stor6 * msg.value / msg.value) / 100 <= 0 / stor6 + (stor6 * msg.value / msg.value)
                if not msg.value:
                    call ceoAddress with:
                         gas 2300 wei
                else:
                    require msg.value
                    require 4 * msg.value / msg.value == 4
                    call ceoAddress with:
                       value 4 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call dev2Address with:
                   value msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require claimedEggs[address(msg.sender)] + (0 / stor6 + (stor6 * msg.value / msg.value)) - (0 / stor6 + (stor6 * msg.value / msg.value) / 100) >= claimedEggs[address(msg.sender)]
                claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (0 / stor6 + (stor6 * msg.value / msg.value)) - (0 / stor6 + (stor6 * msg.value / msg.value) / 100)
                if (0 / stor6 + (stor6 * msg.value / msg.value)) - (0 / stor6 + (stor6 * msg.value / msg.value) / 100) >= marketEggs / 50:
                    if HATCH_COOLDOWN_MAX >= hatchCooldown[address(msg.sender)]:
                        hatchCooldown[address(msg.sender)] = 0
                    else:
                        require HATCH_COOLDOWN_MAX <= hatchCooldown[address(msg.sender)]
                        hatchCooldown[address(msg.sender)] -= HATCH_COOLDOWN_MAX
                else:
                    if not HATCH_COOLDOWN_MAX:
                        require marketEggs / 50
                        if 0 / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                            hatchCooldown[address(msg.sender)] = 0
                        else:
                            require 0 / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                            hatchCooldown[address(msg.sender)] -= 0 / marketEggs / 50
                    else:
                        require HATCH_COOLDOWN_MAX
                        require (0 / stor6 + (stor6 * msg.value / msg.value) * HATCH_COOLDOWN_MAX) - (0 / stor6 + (stor6 * msg.value / msg.value) / 100 * HATCH_COOLDOWN_MAX) / HATCH_COOLDOWN_MAX == (0 / stor6 + (stor6 * msg.value / msg.value)) - (0 / stor6 + (stor6 * msg.value / msg.value) / 100)
                        require marketEggs / 50
                        if (0 / stor6 + (stor6 * msg.value / msg.value) * HATCH_COOLDOWN_MAX) - (0 / stor6 + (stor6 * msg.value / msg.value) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                            hatchCooldown[address(msg.sender)] = 0
                        else:
                            require (0 / stor6 + (stor6 * msg.value / msg.value) * HATCH_COOLDOWN_MAX) - (0 / stor6 + (stor6 * msg.value / msg.value) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                            hatchCooldown[address(msg.sender)] -= (0 / stor6 + (stor6 * msg.value / msg.value) * HATCH_COOLDOWN_MAX) - (0 / stor6 + (stor6 * msg.value / msg.value) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50
                if not totalHatcheryShrimp / 100:
                    if (0 / stor6 + (stor6 * msg.value / msg.value)) - (0 / stor6 + (stor6 * msg.value / msg.value) / 100) > 0:
                        require lastBidTime + potDrainTime >= lastBidTime
                        if lastBidTime + potDrainTime < block.timestamp:
                            call currentWinnerAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            initialized = 0
                        if initialized:
                            if currentWinnerAddress != msg.sender:
                                require lastBidTime + potDrainTime >= lastBidTime
                                require block.timestamp <= lastBidTime + potDrainTime
                                require POT_DRAIN_INCREMENT >= 0
                                potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                if potDrainTime > POT_DRAIN_MAX:
                                    potDrainTime = POT_DRAIN_MAX
                                lastBidTime = block.timestamp
                                currentWinnerAddress = msg.sender
                else:
                    require totalHatcheryShrimp / 100
                    require totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP / totalHatcheryShrimp / 100 == EGGS_TO_HATCH_1SHRIMP
                    if (0 / stor6 + (stor6 * msg.value / msg.value)) - (0 / stor6 + (stor6 * msg.value / msg.value) / 100) > totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP:
                        require lastBidTime + potDrainTime >= lastBidTime
                        if lastBidTime + potDrainTime < block.timestamp:
                            call currentWinnerAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            initialized = 0
                        if initialized:
                            if currentWinnerAddress != msg.sender:
                                require lastBidTime + potDrainTime >= lastBidTime
                                require block.timestamp <= lastBidTime + potDrainTime
                                require POT_DRAIN_INCREMENT >= 0
                                potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                if potDrainTime > POT_DRAIN_MAX:
                                    potDrainTime = POT_DRAIN_MAX
                                lastBidTime = block.timestamp
                                currentWinnerAddress = msg.sender
            else:
                require 0 / stor6 + (stor6 * msg.value / msg.value)
                require 4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 0 / stor6 + (stor6 * msg.value / msg.value) == 4
                require 4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100 <= 0 / stor6 + (stor6 * msg.value / msg.value)
                require (0 / stor6 + (stor6 * msg.value / msg.value)) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100) / 100 <= (0 / stor6 + (stor6 * msg.value / msg.value)) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100)
                if not msg.value:
                    call ceoAddress with:
                         gas 2300 wei
                else:
                    require msg.value
                    require 4 * msg.value / msg.value == 4
                    call ceoAddress with:
                       value 4 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call dev2Address with:
                   value msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require claimedEggs[address(msg.sender)] + (0 / stor6 + (stor6 * msg.value / msg.value)) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100) - ((0 / stor6 + (stor6 * msg.value / msg.value)) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100) / 100) >= claimedEggs[address(msg.sender)]
                claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (0 / stor6 + (stor6 * msg.value / msg.value)) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100) - ((0 / stor6 + (stor6 * msg.value / msg.value)) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100) / 100)
                if (0 / stor6 + (stor6 * msg.value / msg.value)) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100) - ((0 / stor6 + (stor6 * msg.value / msg.value)) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100) / 100) >= marketEggs / 50:
                    if HATCH_COOLDOWN_MAX >= hatchCooldown[address(msg.sender)]:
                        hatchCooldown[address(msg.sender)] = 0
                    else:
                        require HATCH_COOLDOWN_MAX <= hatchCooldown[address(msg.sender)]
                        hatchCooldown[address(msg.sender)] -= HATCH_COOLDOWN_MAX
                else:
                    if not HATCH_COOLDOWN_MAX:
                        require marketEggs / 50
                        if 0 / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                            hatchCooldown[address(msg.sender)] = 0
                        else:
                            require 0 / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                            hatchCooldown[address(msg.sender)] -= 0 / marketEggs / 50
                    else:
                        require HATCH_COOLDOWN_MAX
                        require (0 / stor6 + (stor6 * msg.value / msg.value) * HATCH_COOLDOWN_MAX) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((0 / stor6 + (stor6 * msg.value / msg.value)) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / HATCH_COOLDOWN_MAX == (0 / stor6 + (stor6 * msg.value / msg.value)) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100) - ((0 / stor6 + (stor6 * msg.value / msg.value)) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100) / 100)
                        require marketEggs / 50
                        if (0 / stor6 + (stor6 * msg.value / msg.value) * HATCH_COOLDOWN_MAX) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((0 / stor6 + (stor6 * msg.value / msg.value)) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                            hatchCooldown[address(msg.sender)] = 0
                        else:
                            require (0 / stor6 + (stor6 * msg.value / msg.value) * HATCH_COOLDOWN_MAX) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((0 / stor6 + (stor6 * msg.value / msg.value)) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                            hatchCooldown[address(msg.sender)] -= (0 / stor6 + (stor6 * msg.value / msg.value) * HATCH_COOLDOWN_MAX) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((0 / stor6 + (stor6 * msg.value / msg.value)) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50
                if not totalHatcheryShrimp / 100:
                    if (0 / stor6 + (stor6 * msg.value / msg.value)) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100) - ((0 / stor6 + (stor6 * msg.value / msg.value)) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100) / 100) > 0:
                        require lastBidTime + potDrainTime >= lastBidTime
                        if lastBidTime + potDrainTime < block.timestamp:
                            call currentWinnerAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            initialized = 0
                        if initialized:
                            if currentWinnerAddress != msg.sender:
                                require lastBidTime + potDrainTime >= lastBidTime
                                require block.timestamp <= lastBidTime + potDrainTime
                                require POT_DRAIN_INCREMENT >= 0
                                potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                if potDrainTime > POT_DRAIN_MAX:
                                    potDrainTime = POT_DRAIN_MAX
                                lastBidTime = block.timestamp
                                currentWinnerAddress = msg.sender
                else:
                    require totalHatcheryShrimp / 100
                    require totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP / totalHatcheryShrimp / 100 == EGGS_TO_HATCH_1SHRIMP
                    if (0 / stor6 + (stor6 * msg.value / msg.value)) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100) - ((0 / stor6 + (stor6 * msg.value / msg.value)) - (4 * 0 / stor6 + (stor6 * msg.value / msg.value) / 100) / 100) > totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP:
                        require lastBidTime + potDrainTime >= lastBidTime
                        if lastBidTime + potDrainTime < block.timestamp:
                            call currentWinnerAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            initialized = 0
                        if initialized:
                            if currentWinnerAddress != msg.sender:
                                require lastBidTime + potDrainTime >= lastBidTime
                                require block.timestamp <= lastBidTime + potDrainTime
                                require POT_DRAIN_INCREMENT >= 0
                                potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                if potDrainTime > POT_DRAIN_MAX:
                                    potDrainTime = POT_DRAIN_MAX
                                lastBidTime = block.timestamp
                                currentWinnerAddress = msg.sender
    else:
        require stor5
        require stor5 * marketEggs / stor5 == marketEggs
        if not stor5:
            if not stor6:
                require msg.value
                require stor6 + (0 / msg.value) >= stor6
                require stor6 + (0 / msg.value)
                if not stor5 * marketEggs / stor6 + (0 / msg.value):
                    require 0 <= stor5 * marketEggs / stor6 + (0 / msg.value)
                    require stor5 * marketEggs / stor6 + (0 / msg.value) / 100 <= stor5 * marketEggs / stor6 + (0 / msg.value)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call dev2Address with:
                       value msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (0 / msg.value)) - (stor5 * marketEggs / stor6 + (0 / msg.value) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (0 / msg.value)) - (stor5 * marketEggs / stor6 + (0 / msg.value) / 100)
                    if (stor5 * marketEggs / stor6 + (0 / msg.value)) - (stor5 * marketEggs / stor6 + (0 / msg.value) / 100) >= marketEggs / 50:
                        if HATCH_COOLDOWN_MAX >= hatchCooldown[address(msg.sender)]:
                            hatchCooldown[address(msg.sender)] = 0
                        else:
                            require HATCH_COOLDOWN_MAX <= hatchCooldown[address(msg.sender)]
                            hatchCooldown[address(msg.sender)] -= HATCH_COOLDOWN_MAX
                    else:
                        if not HATCH_COOLDOWN_MAX:
                            require marketEggs / 50
                            if 0 / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                                hatchCooldown[address(msg.sender)] = 0
                            else:
                                require 0 / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                                hatchCooldown[address(msg.sender)] -= 0 / marketEggs / 50
                        else:
                            require HATCH_COOLDOWN_MAX
                            require (stor5 * marketEggs / stor6 + (0 / msg.value) * HATCH_COOLDOWN_MAX) - (stor5 * marketEggs / stor6 + (0 / msg.value) / 100 * HATCH_COOLDOWN_MAX) / HATCH_COOLDOWN_MAX == (stor5 * marketEggs / stor6 + (0 / msg.value)) - (stor5 * marketEggs / stor6 + (0 / msg.value) / 100)
                            require marketEggs / 50
                            if (stor5 * marketEggs / stor6 + (0 / msg.value) * HATCH_COOLDOWN_MAX) - (stor5 * marketEggs / stor6 + (0 / msg.value) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                                hatchCooldown[address(msg.sender)] = 0
                            else:
                                require (stor5 * marketEggs / stor6 + (0 / msg.value) * HATCH_COOLDOWN_MAX) - (stor5 * marketEggs / stor6 + (0 / msg.value) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                                hatchCooldown[address(msg.sender)] -= (stor5 * marketEggs / stor6 + (0 / msg.value) * HATCH_COOLDOWN_MAX) - (stor5 * marketEggs / stor6 + (0 / msg.value) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50
                    if not totalHatcheryShrimp / 100:
                        if (stor5 * marketEggs / stor6 + (0 / msg.value)) - (stor5 * marketEggs / stor6 + (0 / msg.value) / 100) > 0:
                            require lastBidTime + potDrainTime >= lastBidTime
                            if lastBidTime + potDrainTime < block.timestamp:
                                call currentWinnerAddress with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                initialized = 0
                            if initialized:
                                if currentWinnerAddress != msg.sender:
                                    require lastBidTime + potDrainTime >= lastBidTime
                                    require block.timestamp <= lastBidTime + potDrainTime
                                    require POT_DRAIN_INCREMENT >= 0
                                    potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                    if potDrainTime > POT_DRAIN_MAX:
                                        potDrainTime = POT_DRAIN_MAX
                                    lastBidTime = block.timestamp
                                    currentWinnerAddress = msg.sender
                    else:
                        require totalHatcheryShrimp / 100
                        require totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP / totalHatcheryShrimp / 100 == EGGS_TO_HATCH_1SHRIMP
                        if (stor5 * marketEggs / stor6 + (0 / msg.value)) - (stor5 * marketEggs / stor6 + (0 / msg.value) / 100) > totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP:
                            require lastBidTime + potDrainTime >= lastBidTime
                            if lastBidTime + potDrainTime < block.timestamp:
                                call currentWinnerAddress with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                initialized = 0
                            if initialized:
                                if currentWinnerAddress != msg.sender:
                                    require lastBidTime + potDrainTime >= lastBidTime
                                    require block.timestamp <= lastBidTime + potDrainTime
                                    require POT_DRAIN_INCREMENT >= 0
                                    potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                    if potDrainTime > POT_DRAIN_MAX:
                                        potDrainTime = POT_DRAIN_MAX
                                    lastBidTime = block.timestamp
                                    currentWinnerAddress = msg.sender
                else:
                    require stor5 * marketEggs / stor6 + (0 / msg.value)
                    require 4 * stor5 * marketEggs / stor6 + (0 / msg.value) / stor5 * marketEggs / stor6 + (0 / msg.value) == 4
                    require 4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100 <= stor5 * marketEggs / stor6 + (0 / msg.value)
                    require (stor5 * marketEggs / stor6 + (0 / msg.value)) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100) / 100 <= (stor5 * marketEggs / stor6 + (0 / msg.value)) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call dev2Address with:
                       value msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (0 / msg.value)) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100) - ((stor5 * marketEggs / stor6 + (0 / msg.value)) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (0 / msg.value)) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100) - ((stor5 * marketEggs / stor6 + (0 / msg.value)) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100) / 100)
                    if (stor5 * marketEggs / stor6 + (0 / msg.value)) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100) - ((stor5 * marketEggs / stor6 + (0 / msg.value)) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100) / 100) >= marketEggs / 50:
                        if HATCH_COOLDOWN_MAX >= hatchCooldown[address(msg.sender)]:
                            hatchCooldown[address(msg.sender)] = 0
                        else:
                            require HATCH_COOLDOWN_MAX <= hatchCooldown[address(msg.sender)]
                            hatchCooldown[address(msg.sender)] -= HATCH_COOLDOWN_MAX
                    else:
                        if not HATCH_COOLDOWN_MAX:
                            require marketEggs / 50
                            if 0 / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                                hatchCooldown[address(msg.sender)] = 0
                            else:
                                require 0 / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                                hatchCooldown[address(msg.sender)] -= 0 / marketEggs / 50
                        else:
                            require HATCH_COOLDOWN_MAX
                            require (stor5 * marketEggs / stor6 + (0 / msg.value) * HATCH_COOLDOWN_MAX) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((stor5 * marketEggs / stor6 + (0 / msg.value)) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / HATCH_COOLDOWN_MAX == (stor5 * marketEggs / stor6 + (0 / msg.value)) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100) - ((stor5 * marketEggs / stor6 + (0 / msg.value)) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100) / 100)
                            require marketEggs / 50
                            if (stor5 * marketEggs / stor6 + (0 / msg.value) * HATCH_COOLDOWN_MAX) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((stor5 * marketEggs / stor6 + (0 / msg.value)) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                                hatchCooldown[address(msg.sender)] = 0
                            else:
                                require (stor5 * marketEggs / stor6 + (0 / msg.value) * HATCH_COOLDOWN_MAX) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((stor5 * marketEggs / stor6 + (0 / msg.value)) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                                hatchCooldown[address(msg.sender)] -= (stor5 * marketEggs / stor6 + (0 / msg.value) * HATCH_COOLDOWN_MAX) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((stor5 * marketEggs / stor6 + (0 / msg.value)) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50
                    if not totalHatcheryShrimp / 100:
                        if (stor5 * marketEggs / stor6 + (0 / msg.value)) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100) - ((stor5 * marketEggs / stor6 + (0 / msg.value)) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100) / 100) > 0:
                            require lastBidTime + potDrainTime >= lastBidTime
                            if lastBidTime + potDrainTime < block.timestamp:
                                call currentWinnerAddress with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                initialized = 0
                            if initialized:
                                if currentWinnerAddress != msg.sender:
                                    require lastBidTime + potDrainTime >= lastBidTime
                                    require block.timestamp <= lastBidTime + potDrainTime
                                    require POT_DRAIN_INCREMENT >= 0
                                    potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                    if potDrainTime > POT_DRAIN_MAX:
                                        potDrainTime = POT_DRAIN_MAX
                                    lastBidTime = block.timestamp
                                    currentWinnerAddress = msg.sender
                    else:
                        require totalHatcheryShrimp / 100
                        require totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP / totalHatcheryShrimp / 100 == EGGS_TO_HATCH_1SHRIMP
                        if (stor5 * marketEggs / stor6 + (0 / msg.value)) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100) - ((stor5 * marketEggs / stor6 + (0 / msg.value)) - (4 * stor5 * marketEggs / stor6 + (0 / msg.value) / 100) / 100) > totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP:
                            require lastBidTime + potDrainTime >= lastBidTime
                            if lastBidTime + potDrainTime < block.timestamp:
                                call currentWinnerAddress with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                initialized = 0
                            if initialized:
                                if currentWinnerAddress != msg.sender:
                                    require lastBidTime + potDrainTime >= lastBidTime
                                    require block.timestamp <= lastBidTime + potDrainTime
                                    require POT_DRAIN_INCREMENT >= 0
                                    potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                    if potDrainTime > POT_DRAIN_MAX:
                                        potDrainTime = POT_DRAIN_MAX
                                    lastBidTime = block.timestamp
                                    currentWinnerAddress = msg.sender
            else:
                require stor6
                require stor6 * msg.value / stor6 == msg.value
                require stor6 * msg.value >= 0
                require msg.value
                require stor6 + (stor6 * msg.value / msg.value) >= stor6
                require stor6 + (stor6 * msg.value / msg.value)
                if not stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value):
                    require 0 <= stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)
                    require stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100 <= stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call dev2Address with:
                       value msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100)
                    if (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) >= marketEggs / 50:
                        if HATCH_COOLDOWN_MAX >= hatchCooldown[address(msg.sender)]:
                            hatchCooldown[address(msg.sender)] = 0
                        else:
                            require HATCH_COOLDOWN_MAX <= hatchCooldown[address(msg.sender)]
                            hatchCooldown[address(msg.sender)] -= HATCH_COOLDOWN_MAX
                    else:
                        if not HATCH_COOLDOWN_MAX:
                            require marketEggs / 50
                            if 0 / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                                hatchCooldown[address(msg.sender)] = 0
                            else:
                                require 0 / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                                hatchCooldown[address(msg.sender)] -= 0 / marketEggs / 50
                        else:
                            require HATCH_COOLDOWN_MAX
                            require (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) * HATCH_COOLDOWN_MAX) - (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100 * HATCH_COOLDOWN_MAX) / HATCH_COOLDOWN_MAX == (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100)
                            require marketEggs / 50
                            if (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) * HATCH_COOLDOWN_MAX) - (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                                hatchCooldown[address(msg.sender)] = 0
                            else:
                                require (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) * HATCH_COOLDOWN_MAX) - (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                                hatchCooldown[address(msg.sender)] -= (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) * HATCH_COOLDOWN_MAX) - (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50
                    if not totalHatcheryShrimp / 100:
                        if (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) > 0:
                            require lastBidTime + potDrainTime >= lastBidTime
                            if lastBidTime + potDrainTime < block.timestamp:
                                call currentWinnerAddress with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                initialized = 0
                            if initialized:
                                if currentWinnerAddress != msg.sender:
                                    require lastBidTime + potDrainTime >= lastBidTime
                                    require block.timestamp <= lastBidTime + potDrainTime
                                    require POT_DRAIN_INCREMENT >= 0
                                    potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                    if potDrainTime > POT_DRAIN_MAX:
                                        potDrainTime = POT_DRAIN_MAX
                                    lastBidTime = block.timestamp
                                    currentWinnerAddress = msg.sender
                    else:
                        require totalHatcheryShrimp / 100
                        require totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP / totalHatcheryShrimp / 100 == EGGS_TO_HATCH_1SHRIMP
                        if (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) > totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP:
                            require lastBidTime + potDrainTime >= lastBidTime
                            if lastBidTime + potDrainTime < block.timestamp:
                                call currentWinnerAddress with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                initialized = 0
                            if initialized:
                                if currentWinnerAddress != msg.sender:
                                    require lastBidTime + potDrainTime >= lastBidTime
                                    require block.timestamp <= lastBidTime + potDrainTime
                                    require POT_DRAIN_INCREMENT >= 0
                                    potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                    if potDrainTime > POT_DRAIN_MAX:
                                        potDrainTime = POT_DRAIN_MAX
                                    lastBidTime = block.timestamp
                                    currentWinnerAddress = msg.sender
                else:
                    require stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)
                    require 4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) == 4
                    require 4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100 <= stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)
                    require (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) / 100 <= (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call dev2Address with:
                       value msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) - ((stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) - ((stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) / 100)
                    if (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) - ((stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) / 100) >= marketEggs / 50:
                        if HATCH_COOLDOWN_MAX >= hatchCooldown[address(msg.sender)]:
                            hatchCooldown[address(msg.sender)] = 0
                        else:
                            require HATCH_COOLDOWN_MAX <= hatchCooldown[address(msg.sender)]
                            hatchCooldown[address(msg.sender)] -= HATCH_COOLDOWN_MAX
                    else:
                        if not HATCH_COOLDOWN_MAX:
                            require marketEggs / 50
                            if 0 / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                                hatchCooldown[address(msg.sender)] = 0
                            else:
                                require 0 / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                                hatchCooldown[address(msg.sender)] -= 0 / marketEggs / 50
                        else:
                            require HATCH_COOLDOWN_MAX
                            require (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) * HATCH_COOLDOWN_MAX) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / HATCH_COOLDOWN_MAX == (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) - ((stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) / 100)
                            require marketEggs / 50
                            if (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) * HATCH_COOLDOWN_MAX) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                                hatchCooldown[address(msg.sender)] = 0
                            else:
                                require (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) * HATCH_COOLDOWN_MAX) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                                hatchCooldown[address(msg.sender)] -= (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) * HATCH_COOLDOWN_MAX) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50
                    if not totalHatcheryShrimp / 100:
                        if (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) - ((stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) / 100) > 0:
                            require lastBidTime + potDrainTime >= lastBidTime
                            if lastBidTime + potDrainTime < block.timestamp:
                                call currentWinnerAddress with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                initialized = 0
                            if initialized:
                                if currentWinnerAddress != msg.sender:
                                    require lastBidTime + potDrainTime >= lastBidTime
                                    require block.timestamp <= lastBidTime + potDrainTime
                                    require POT_DRAIN_INCREMENT >= 0
                                    potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                    if potDrainTime > POT_DRAIN_MAX:
                                        potDrainTime = POT_DRAIN_MAX
                                    lastBidTime = block.timestamp
                                    currentWinnerAddress = msg.sender
                    else:
                        require totalHatcheryShrimp / 100
                        require totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP / totalHatcheryShrimp / 100 == EGGS_TO_HATCH_1SHRIMP
                        if (stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) - ((stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value)) - (4 * stor5 * marketEggs / stor6 + (stor6 * msg.value / msg.value) / 100) / 100) > totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP:
                            require lastBidTime + potDrainTime >= lastBidTime
                            if lastBidTime + potDrainTime < block.timestamp:
                                call currentWinnerAddress with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                initialized = 0
                            if initialized:
                                if currentWinnerAddress != msg.sender:
                                    require lastBidTime + potDrainTime >= lastBidTime
                                    require block.timestamp <= lastBidTime + potDrainTime
                                    require POT_DRAIN_INCREMENT >= 0
                                    potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                    if potDrainTime > POT_DRAIN_MAX:
                                        potDrainTime = POT_DRAIN_MAX
                                    lastBidTime = block.timestamp
                                    currentWinnerAddress = msg.sender
        else:
            require stor5
            require (eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - msg.value - prizeEth
            if not stor6:
                require msg.value
                require stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) >= stor6
                require stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)
                if not stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value):
                    require 0 <= stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)
                    require stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100 <= stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call dev2Address with:
                       value msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100)
                    if (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) >= marketEggs / 50:
                        if HATCH_COOLDOWN_MAX >= hatchCooldown[address(msg.sender)]:
                            hatchCooldown[address(msg.sender)] = 0
                        else:
                            require HATCH_COOLDOWN_MAX <= hatchCooldown[address(msg.sender)]
                            hatchCooldown[address(msg.sender)] -= HATCH_COOLDOWN_MAX
                    else:
                        if not HATCH_COOLDOWN_MAX:
                            require marketEggs / 50
                            if 0 / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                                hatchCooldown[address(msg.sender)] = 0
                            else:
                                require 0 / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                                hatchCooldown[address(msg.sender)] -= 0 / marketEggs / 50
                        else:
                            require HATCH_COOLDOWN_MAX
                            require (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) * HATCH_COOLDOWN_MAX) - (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100 * HATCH_COOLDOWN_MAX) / HATCH_COOLDOWN_MAX == (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100)
                            require marketEggs / 50
                            if (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) * HATCH_COOLDOWN_MAX) - (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                                hatchCooldown[address(msg.sender)] = 0
                            else:
                                require (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) * HATCH_COOLDOWN_MAX) - (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                                hatchCooldown[address(msg.sender)] -= (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) * HATCH_COOLDOWN_MAX) - (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50
                    if not totalHatcheryShrimp / 100:
                        if (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) > 0:
                            require lastBidTime + potDrainTime >= lastBidTime
                            if lastBidTime + potDrainTime < block.timestamp:
                                call currentWinnerAddress with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                initialized = 0
                            if initialized:
                                if currentWinnerAddress != msg.sender:
                                    require lastBidTime + potDrainTime >= lastBidTime
                                    require block.timestamp <= lastBidTime + potDrainTime
                                    require POT_DRAIN_INCREMENT >= 0
                                    potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                    if potDrainTime > POT_DRAIN_MAX:
                                        potDrainTime = POT_DRAIN_MAX
                                    lastBidTime = block.timestamp
                                    currentWinnerAddress = msg.sender
                    else:
                        require totalHatcheryShrimp / 100
                        require totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP / totalHatcheryShrimp / 100 == EGGS_TO_HATCH_1SHRIMP
                        if (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) > totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP:
                            require lastBidTime + potDrainTime >= lastBidTime
                            if lastBidTime + potDrainTime < block.timestamp:
                                call currentWinnerAddress with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                initialized = 0
                            if initialized:
                                if currentWinnerAddress != msg.sender:
                                    require lastBidTime + potDrainTime >= lastBidTime
                                    require block.timestamp <= lastBidTime + potDrainTime
                                    require POT_DRAIN_INCREMENT >= 0
                                    potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                    if potDrainTime > POT_DRAIN_MAX:
                                        potDrainTime = POT_DRAIN_MAX
                                    lastBidTime = block.timestamp
                                    currentWinnerAddress = msg.sender
                else:
                    require stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)
                    require 4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) == 4
                    require 4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100 <= stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)
                    require (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) / 100 <= (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call dev2Address with:
                       value msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) - ((stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) - ((stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) / 100)
                    if (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) - ((stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) / 100) >= marketEggs / 50:
                        if HATCH_COOLDOWN_MAX >= hatchCooldown[address(msg.sender)]:
                            hatchCooldown[address(msg.sender)] = 0
                        else:
                            require HATCH_COOLDOWN_MAX <= hatchCooldown[address(msg.sender)]
                            hatchCooldown[address(msg.sender)] -= HATCH_COOLDOWN_MAX
                    else:
                        if not HATCH_COOLDOWN_MAX:
                            require marketEggs / 50
                            if 0 / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                                hatchCooldown[address(msg.sender)] = 0
                            else:
                                require 0 / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                                hatchCooldown[address(msg.sender)] -= 0 / marketEggs / 50
                        else:
                            require HATCH_COOLDOWN_MAX
                            require (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) * HATCH_COOLDOWN_MAX) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / HATCH_COOLDOWN_MAX == (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) - ((stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) / 100)
                            require marketEggs / 50
                            if (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) * HATCH_COOLDOWN_MAX) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                                hatchCooldown[address(msg.sender)] = 0
                            else:
                                require (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) * HATCH_COOLDOWN_MAX) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                                hatchCooldown[address(msg.sender)] -= (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) * HATCH_COOLDOWN_MAX) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50
                    if not totalHatcheryShrimp / 100:
                        if (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) - ((stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) / 100) > 0:
                            require lastBidTime + potDrainTime >= lastBidTime
                            if lastBidTime + potDrainTime < block.timestamp:
                                call currentWinnerAddress with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                initialized = 0
                            if initialized:
                                if currentWinnerAddress != msg.sender:
                                    require lastBidTime + potDrainTime >= lastBidTime
                                    require block.timestamp <= lastBidTime + potDrainTime
                                    require POT_DRAIN_INCREMENT >= 0
                                    potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                    if potDrainTime > POT_DRAIN_MAX:
                                        potDrainTime = POT_DRAIN_MAX
                                    lastBidTime = block.timestamp
                                    currentWinnerAddress = msg.sender
                    else:
                        require totalHatcheryShrimp / 100
                        require totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP / totalHatcheryShrimp / 100 == EGGS_TO_HATCH_1SHRIMP
                        if (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) - ((stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) / msg.value) / 100) / 100) > totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP:
                            require lastBidTime + potDrainTime >= lastBidTime
                            if lastBidTime + potDrainTime < block.timestamp:
                                call currentWinnerAddress with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                initialized = 0
                            if initialized:
                                if currentWinnerAddress != msg.sender:
                                    require lastBidTime + potDrainTime >= lastBidTime
                                    require block.timestamp <= lastBidTime + potDrainTime
                                    require POT_DRAIN_INCREMENT >= 0
                                    potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                    if potDrainTime > POT_DRAIN_MAX:
                                        potDrainTime = POT_DRAIN_MAX
                                    lastBidTime = block.timestamp
                                    currentWinnerAddress = msg.sender
            else:
                require stor6
                require stor6 * msg.value / stor6 == msg.value
                require stor6 * msg.value >= 0
                require msg.value
                require stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) >= stor6
                require stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)
                if not stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value):
                    require 0 <= stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)
                    require stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100 <= stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call dev2Address with:
                       value msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100)
                    if (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) >= marketEggs / 50:
                        if HATCH_COOLDOWN_MAX >= hatchCooldown[address(msg.sender)]:
                            hatchCooldown[address(msg.sender)] = 0
                        else:
                            require HATCH_COOLDOWN_MAX <= hatchCooldown[address(msg.sender)]
                            hatchCooldown[address(msg.sender)] -= HATCH_COOLDOWN_MAX
                    else:
                        if not HATCH_COOLDOWN_MAX:
                            require marketEggs / 50
                            if 0 / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                                hatchCooldown[address(msg.sender)] = 0
                            else:
                                require 0 / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                                hatchCooldown[address(msg.sender)] -= 0 / marketEggs / 50
                        else:
                            require HATCH_COOLDOWN_MAX
                            require (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) * HATCH_COOLDOWN_MAX) - (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100 * HATCH_COOLDOWN_MAX) / HATCH_COOLDOWN_MAX == (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100)
                            require marketEggs / 50
                            if (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) * HATCH_COOLDOWN_MAX) - (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                                hatchCooldown[address(msg.sender)] = 0
                            else:
                                require (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) * HATCH_COOLDOWN_MAX) - (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                                hatchCooldown[address(msg.sender)] -= (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) * HATCH_COOLDOWN_MAX) - (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50
                    if not totalHatcheryShrimp / 100:
                        if (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) > 0:
                            require lastBidTime + potDrainTime >= lastBidTime
                            if lastBidTime + potDrainTime < block.timestamp:
                                call currentWinnerAddress with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                initialized = 0
                            if initialized:
                                if currentWinnerAddress != msg.sender:
                                    require lastBidTime + potDrainTime >= lastBidTime
                                    require block.timestamp <= lastBidTime + potDrainTime
                                    require POT_DRAIN_INCREMENT >= 0
                                    potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                    if potDrainTime > POT_DRAIN_MAX:
                                        potDrainTime = POT_DRAIN_MAX
                                    lastBidTime = block.timestamp
                                    currentWinnerAddress = msg.sender
                    else:
                        require totalHatcheryShrimp / 100
                        require totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP / totalHatcheryShrimp / 100 == EGGS_TO_HATCH_1SHRIMP
                        if (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) > totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP:
                            require lastBidTime + potDrainTime >= lastBidTime
                            if lastBidTime + potDrainTime < block.timestamp:
                                call currentWinnerAddress with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                initialized = 0
                            if initialized:
                                if currentWinnerAddress != msg.sender:
                                    require lastBidTime + potDrainTime >= lastBidTime
                                    require block.timestamp <= lastBidTime + potDrainTime
                                    require POT_DRAIN_INCREMENT >= 0
                                    potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                    if potDrainTime > POT_DRAIN_MAX:
                                        potDrainTime = POT_DRAIN_MAX
                                    lastBidTime = block.timestamp
                                    currentWinnerAddress = msg.sender
                else:
                    require stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)
                    require 4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) == 4
                    require 4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100 <= stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)
                    require (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) / 100 <= (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 4 * msg.value / msg.value == 4
                        call ceoAddress with:
                           value 4 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call dev2Address with:
                       value msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) - ((stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) - ((stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) / 100)
                    if (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) - ((stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) / 100) >= marketEggs / 50:
                        if HATCH_COOLDOWN_MAX >= hatchCooldown[address(msg.sender)]:
                            hatchCooldown[address(msg.sender)] = 0
                        else:
                            require HATCH_COOLDOWN_MAX <= hatchCooldown[address(msg.sender)]
                            hatchCooldown[address(msg.sender)] -= HATCH_COOLDOWN_MAX
                    else:
                        if not HATCH_COOLDOWN_MAX:
                            require marketEggs / 50
                            if 0 / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                                hatchCooldown[address(msg.sender)] = 0
                            else:
                                require 0 / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                                hatchCooldown[address(msg.sender)] -= 0 / marketEggs / 50
                        else:
                            require HATCH_COOLDOWN_MAX
                            require (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) * HATCH_COOLDOWN_MAX) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / HATCH_COOLDOWN_MAX == (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) - ((stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) / 100)
                            require marketEggs / 50
                            if (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) * HATCH_COOLDOWN_MAX) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 >= hatchCooldown[address(msg.sender)]:
                                hatchCooldown[address(msg.sender)] = 0
                            else:
                                require (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) * HATCH_COOLDOWN_MAX) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50 <= hatchCooldown[address(msg.sender)]
                                hatchCooldown[address(msg.sender)] -= (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) * HATCH_COOLDOWN_MAX) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100 * HATCH_COOLDOWN_MAX) - ((stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) / 100 * HATCH_COOLDOWN_MAX) / marketEggs / 50
                    if not totalHatcheryShrimp / 100:
                        if (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) - ((stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) / 100) > 0:
                            require lastBidTime + potDrainTime >= lastBidTime
                            if lastBidTime + potDrainTime < block.timestamp:
                                call currentWinnerAddress with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                initialized = 0
                            if initialized:
                                if currentWinnerAddress != msg.sender:
                                    require lastBidTime + potDrainTime >= lastBidTime
                                    require block.timestamp <= lastBidTime + potDrainTime
                                    require POT_DRAIN_INCREMENT >= 0
                                    potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                    if potDrainTime > POT_DRAIN_MAX:
                                        potDrainTime = POT_DRAIN_MAX
                                    lastBidTime = block.timestamp
                                    currentWinnerAddress = msg.sender
                    else:
                        require totalHatcheryShrimp / 100
                        require totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP / totalHatcheryShrimp / 100 == EGGS_TO_HATCH_1SHRIMP
                        if (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) - ((stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value)) - (4 * stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) - (prizeEth * stor5) + (stor6 * msg.value) / msg.value) / 100) / 100) > totalHatcheryShrimp / 100 * EGGS_TO_HATCH_1SHRIMP:
                            require lastBidTime + potDrainTime >= lastBidTime
                            if lastBidTime + potDrainTime < block.timestamp:
                                call currentWinnerAddress with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                initialized = 0
                            if initialized:
                                if currentWinnerAddress != msg.sender:
                                    require lastBidTime + potDrainTime >= lastBidTime
                                    require block.timestamp <= lastBidTime + potDrainTime
                                    require POT_DRAIN_INCREMENT >= 0
                                    potDrainTime = lastBidTime + potDrainTime - block.timestamp + POT_DRAIN_INCREMENT
                                    if potDrainTime > POT_DRAIN_MAX:
                                        potDrainTime = POT_DRAIN_MAX
                                    lastBidTime = block.timestamp
                                    currentWinnerAddress = msg.sender
}

function sellEggs() {
    require initialized
    require lastBidTime + potDrainTime >= lastBidTime
    if lastBidTime + potDrainTime < block.timestamp:
        call currentWinnerAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        initialized = 0
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1SHRIMP:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require prizeEth <= eth.balance(this.address)
            if not stor5:
                if not stor6:
                    require claimedEggs[address(msg.sender)]
                    require stor6 + (0 / claimedEggs[address(msg.sender)]) >= stor6
                    require stor6 + (0 / claimedEggs[address(msg.sender)])
                    if not 0 / stor6 + (0 / claimedEggs[address(msg.sender)]):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        require prizeEth >= prizeEth
                        require 0 <= 0 / stor6 + (0 / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value 0 / stor6 + (0 / claimedEggs[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor6 + (0 / claimedEggs[address(msg.sender)])
                        require 20 * 0 / stor6 + (0 / claimedEggs[address(msg.sender)]) / 0 / stor6 + (0 / claimedEggs[address(msg.sender)]) == 20
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        require prizeEth + (20 * 0 / stor6 + (0 / claimedEggs[address(msg.sender)]) / 100) >= prizeEth
                        prizeEth += 20 * 0 / stor6 + (0 / claimedEggs[address(msg.sender)]) / 100
                        require 20 * 0 / stor6 + (0 / claimedEggs[address(msg.sender)]) / 100 <= 0 / stor6 + (0 / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value (0 / stor6 + (0 / claimedEggs[address(msg.sender)])) - (20 * 0 / stor6 + (0 / claimedEggs[address(msg.sender)]) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require stor6
                    require stor6 * claimedEggs[address(msg.sender)] / stor6 == claimedEggs[address(msg.sender)]
                    require stor6 * claimedEggs[address(msg.sender)] >= 0
                    require claimedEggs[address(msg.sender)]
                    require stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) >= stor6
                    require stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                    if not 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        require prizeEth >= prizeEth
                        require 0 <= 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        require 20 * 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) == 20
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        require prizeEth + (20 * 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) >= prizeEth
                        prizeEth += 20 * 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100
                        require 20 * 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 <= 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value (0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])) - (20 * 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require stor5
                require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - prizeEth
                if not stor5:
                    if not stor6:
                        require claimedEggs[address(msg.sender)]
                        require stor6 + (0 / claimedEggs[address(msg.sender)]) >= stor6
                        require stor6 + (0 / claimedEggs[address(msg.sender)])
                        if not (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require prizeEth >= prizeEth
                            require 0 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)])
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)]) / (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)]) == 20
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require prizeEth + (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)]) / 100) >= prizeEth
                            prizeEth += 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)]) / 100
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)]) / 100 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)])) - (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor6
                        require stor6 * claimedEggs[address(msg.sender)] / stor6 == claimedEggs[address(msg.sender)]
                        require stor6 * claimedEggs[address(msg.sender)] >= 0
                        require claimedEggs[address(msg.sender)]
                        require stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) >= stor6
                        require stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        if not (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require prizeEth >= prizeEth
                            require 0 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) == 20
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require prizeEth + (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) >= prizeEth
                            prizeEth += 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])) - (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require stor5
                    require stor5 * marketEggs / stor5 == marketEggs
                    if not stor6:
                        require stor5 * marketEggs >= stor5 * marketEggs
                        require claimedEggs[address(msg.sender)]
                        require stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)]) >= stor6
                        require stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)])
                        if not (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require prizeEth >= prizeEth
                            require 0 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)])
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)]) / (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)]) == 20
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require prizeEth + (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)]) / 100) >= prizeEth
                            prizeEth += 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)]) / 100
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)]) / 100 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)])) - (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor6
                        require stor6 * claimedEggs[address(msg.sender)] / stor6 == claimedEggs[address(msg.sender)]
                        require (stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) >= stor5 * marketEggs
                        require claimedEggs[address(msg.sender)]
                        require stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) >= stor6
                        require stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                        if not (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require prizeEth >= prizeEth
                            require 0 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) == 20
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require prizeEth + (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100) >= prizeEth
                            prizeEth += 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])) - (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
        else:
            require EGGS_TO_HATCH_1SHRIMP
            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            require prizeEth <= eth.balance(this.address)
            if not stor5:
                if not stor6:
                    require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                    require stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) >= stor6
                    require stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                    if not 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                        require prizeEth >= prizeEth
                        require 0 <= 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                        call msg.sender with:
                           value 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                        require 20 * 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) == 20
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                        require prizeEth + (20 * 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) >= prizeEth
                        prizeEth += 20 * 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100
                        require 20 * 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 <= 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                        call msg.sender with:
                           value (0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))) - (20 * 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require stor6
                    require (claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / stor6 == claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                    require (claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) >= 0
                    require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                    require stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) >= stor6
                    require stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                    if not 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                        require prizeEth >= prizeEth
                        require 0 <= 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                        call msg.sender with:
                           value 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                        require 20 * 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) == 20
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                        require prizeEth + (20 * 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) >= prizeEth
                        prizeEth += 20 * 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100
                        require 20 * 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 <= 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                        call msg.sender with:
                           value (0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))) - (20 * 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require stor5
                require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - prizeEth
                if not stor5:
                    if not stor6:
                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                        require stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) >= stor6
                        require stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                        if not (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                            require prizeEth >= prizeEth
                            require 0 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) == 20
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                            require prizeEth + (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) >= prizeEth
                            prizeEth += 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))) - (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor6
                        require (claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / stor6 == claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                        require (claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) >= 0
                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                        require stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) >= stor6
                        require stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                        if not (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                            require prizeEth >= prizeEth
                            require 0 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) == 20
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                            require prizeEth + (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) >= prizeEth
                            prizeEth += 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))) - (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require stor5
                    require stor5 * marketEggs / stor5 == marketEggs
                    if not stor6:
                        require stor5 * marketEggs >= stor5 * marketEggs
                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                        require stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) >= stor6
                        require stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                        if not (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                            require prizeEth >= prizeEth
                            require 0 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) == 20
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                            require prizeEth + (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) >= prizeEth
                            prizeEth += 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))) - (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor6
                        require (claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / stor6 == claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                        require (stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) >= stor5 * marketEggs
                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                        require stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) >= stor6
                        require stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                        if not (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                            require prizeEth >= prizeEth
                            require 0 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) == 20
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                            require prizeEth + (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) >= prizeEth
                            prizeEth += 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))) - (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require prizeEth <= eth.balance(this.address)
            if not stor5:
                if not stor6:
                    require claimedEggs[address(msg.sender)]
                    require stor6 + (0 / claimedEggs[address(msg.sender)]) >= stor6
                    require stor6 + (0 / claimedEggs[address(msg.sender)])
                    if not 0 / stor6 + (0 / claimedEggs[address(msg.sender)]):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        require prizeEth >= prizeEth
                        require 0 <= 0 / stor6 + (0 / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value 0 / stor6 + (0 / claimedEggs[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor6 + (0 / claimedEggs[address(msg.sender)])
                        require 20 * 0 / stor6 + (0 / claimedEggs[address(msg.sender)]) / 0 / stor6 + (0 / claimedEggs[address(msg.sender)]) == 20
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        require prizeEth + (20 * 0 / stor6 + (0 / claimedEggs[address(msg.sender)]) / 100) >= prizeEth
                        prizeEth += 20 * 0 / stor6 + (0 / claimedEggs[address(msg.sender)]) / 100
                        require 20 * 0 / stor6 + (0 / claimedEggs[address(msg.sender)]) / 100 <= 0 / stor6 + (0 / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value (0 / stor6 + (0 / claimedEggs[address(msg.sender)])) - (20 * 0 / stor6 + (0 / claimedEggs[address(msg.sender)]) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require stor6
                    require stor6 * claimedEggs[address(msg.sender)] / stor6 == claimedEggs[address(msg.sender)]
                    require stor6 * claimedEggs[address(msg.sender)] >= 0
                    require claimedEggs[address(msg.sender)]
                    require stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) >= stor6
                    require stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                    if not 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        require prizeEth >= prizeEth
                        require 0 <= 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        require 20 * 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) == 20
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        require prizeEth + (20 * 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) >= prizeEth
                        prizeEth += 20 * 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100
                        require 20 * 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 <= 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value (0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])) - (20 * 0 / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require stor5
                require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - prizeEth
                if not stor5:
                    if not stor6:
                        require claimedEggs[address(msg.sender)]
                        require stor6 + (0 / claimedEggs[address(msg.sender)]) >= stor6
                        require stor6 + (0 / claimedEggs[address(msg.sender)])
                        if not (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require prizeEth >= prizeEth
                            require 0 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)])
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)]) / (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)]) == 20
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require prizeEth + (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)]) / 100) >= prizeEth
                            prizeEth += 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)]) / 100
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)]) / 100 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)])) - (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor6
                        require stor6 * claimedEggs[address(msg.sender)] / stor6 == claimedEggs[address(msg.sender)]
                        require stor6 * claimedEggs[address(msg.sender)] >= 0
                        require claimedEggs[address(msg.sender)]
                        require stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) >= stor6
                        require stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        if not (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require prizeEth >= prizeEth
                            require 0 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) == 20
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require prizeEth + (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) >= prizeEth
                            prizeEth += 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])) - (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor6 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require stor5
                    require stor5 * marketEggs / stor5 == marketEggs
                    if not stor6:
                        require stor5 * marketEggs >= stor5 * marketEggs
                        require claimedEggs[address(msg.sender)]
                        require stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)]) >= stor6
                        require stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)])
                        if not (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require prizeEth >= prizeEth
                            require 0 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)])
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)]) / (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)]) == 20
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require prizeEth + (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)]) / 100) >= prizeEth
                            prizeEth += 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)]) / 100
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)]) / 100 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)])) - (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor6
                        require stor6 * claimedEggs[address(msg.sender)] / stor6 == claimedEggs[address(msg.sender)]
                        require (stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) >= stor5 * marketEggs
                        require claimedEggs[address(msg.sender)]
                        require stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) >= stor6
                        require stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                        if not (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require prizeEth >= prizeEth
                            require 0 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) == 20
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require prizeEth + (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100) >= prizeEth
                            prizeEth += 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])) - (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (stor6 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
        else:
            require block.timestamp - lastHatch[address(msg.sender)]
            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            require prizeEth <= eth.balance(this.address)
            if not stor5:
                if not stor6:
                    require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                    require stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) >= stor6
                    require stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                    if not 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                        require prizeEth >= prizeEth
                        require 0 <= 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                        call msg.sender with:
                           value 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                        require 20 * 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) == 20
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                        require prizeEth + (20 * 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) >= prizeEth
                        prizeEth += 20 * 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100
                        require 20 * 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 <= 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                        call msg.sender with:
                           value (0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))) - (20 * 0 / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require stor6
                    require (claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / stor6 == claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                    require (claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) >= 0
                    require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                    require stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) >= stor6
                    require stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                    if not 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                        require prizeEth >= prizeEth
                        require 0 <= 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                        call msg.sender with:
                           value 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                        require 20 * 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) == 20
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                        require prizeEth + (20 * 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) >= prizeEth
                        prizeEth += 20 * 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100
                        require 20 * 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 <= 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                        call msg.sender with:
                           value (0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))) - (20 * 0 / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require stor5
                require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - prizeEth
                if not stor5:
                    if not stor6:
                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                        require stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) >= stor6
                        require stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                        if not (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                            require prizeEth >= prizeEth
                            require 0 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) == 20
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                            require prizeEth + (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) >= prizeEth
                            prizeEth += 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))) - (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor6
                        require (claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / stor6 == claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                        require (claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) >= 0
                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                        require stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) >= stor6
                        require stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                        if not (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                            require prizeEth >= prizeEth
                            require 0 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) == 20
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                            require prizeEth + (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) >= prizeEth
                            prizeEth += 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))) - (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require stor5
                    require stor5 * marketEggs / stor5 == marketEggs
                    if not stor6:
                        require stor5 * marketEggs >= stor5 * marketEggs
                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                        require stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) >= stor6
                        require stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                        if not (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                            require prizeEth >= prizeEth
                            require 0 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) == 20
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                            require prizeEth + (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) >= prizeEth
                            prizeEth += 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))) - (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + (stor5 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor6
                        require (claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / stor6 == claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                        require (stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) >= stor5 * marketEggs
                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                        require stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) >= stor6
                        require stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                        if not (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                            require prizeEth >= prizeEth
                            require 0 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) == 20
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                            require prizeEth + (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) >= prizeEth
                            prizeEth += 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100
                            require 20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 <= (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))) - (20 * (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor6 + ((stor5 * marketEggs) + (claimedEggs[address(msg.sender)] * stor6) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor6) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor6) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimFreeEggs() {
    require ext_code.size(ethVerifyAddress)
    call ethVerifyAddress.verifiedUsers(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        require ext_call.return_data[0]
        require initialized
        require not stor17[address(msg.sender)]
        require prizeEth <= eth.balance(this.address)
        if stor5:
            require stor5
            require stor5 * marketEggs / stor5 == marketEggs
            if stor5:
                require stor5
                require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - prizeEth
                if stor6:
                    require stor6
                    require stor6 * eth.balance(this.address) / 400 / stor6 == eth.balance(this.address) / 400
                    require stor6 * eth.balance(this.address) / 400 >= 0
                    require eth.balance(this.address) / 400
                    require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400) >= stor6
                    require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400)
                    require prizeEth <= eth.balance(this.address)
                    if stor5:
                        require stor5
                        require stor5 * marketEggs / stor5 == marketEggs
                        if stor5:
                            require stor5
                            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - prizeEth
                            if stor6:
                                require stor6
                                require 10^16 * stor6 / stor6 == 10^16
                                require 10^16 * stor6 >= 0
                                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16) >= stor6
                                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)
                                if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16):
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                            else:
                                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16) >= stor6
                                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)
                                if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16):
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                        else:
                            if stor6:
                                require stor6
                                require 10^16 * stor6 / stor6 == 10^16
                                require 10^16 * stor6 >= 0
                                require stor6 + (10^16 * stor6 / 10^16) >= stor6
                                require stor6 + (10^16 * stor6 / 10^16)
                                if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16):
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                            else:
                                require stor6 >= stor6
                                require stor6
                                if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6:
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                    else:
                        if stor6:
                            require stor6
                            require 10^16 * stor6 / stor6 == 10^16
                            require 10^16 * stor6 >= 0
                            require stor6 + (10^16 * stor6 / 10^16) >= stor6
                            require stor6 + (10^16 * stor6 / 10^16)
                            if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400) < 0 / stor6 + (10^16 * stor6 / 10^16):
                                require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                            else:
                                require claimedEggs[address(msg.sender)] + (0 / stor6 + (10^16 * stor6 / 10^16)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += 0 / stor6 + (10^16 * stor6 / 10^16)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                        else:
                            require stor6 >= stor6
                            require stor6
                            if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400) < 0 / stor6:
                                require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (stor6 * eth.balance(this.address) / 400) / eth.balance(this.address) / 400)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                            else:
                                require claimedEggs[address(msg.sender)] + (0 / stor6) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += 0 / stor6
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                else:
                    require eth.balance(this.address) / 400
                    require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400) >= stor6
                    require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400)
                    require prizeEth <= eth.balance(this.address)
                    if stor5:
                        require stor5
                        require stor5 * marketEggs / stor5 == marketEggs
                        if stor5:
                            require stor5
                            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - prizeEth
                            if stor6:
                                require stor6
                                require 10^16 * stor6 / stor6 == 10^16
                                require 10^16 * stor6 >= 0
                                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16) >= stor6
                                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)
                                if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16):
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                            else:
                                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16) >= stor6
                                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)
                                if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16):
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                        else:
                            if stor6:
                                require stor6
                                require 10^16 * stor6 / stor6 == 10^16
                                require 10^16 * stor6 >= 0
                                require stor6 + (10^16 * stor6 / 10^16) >= stor6
                                require stor6 + (10^16 * stor6 / 10^16)
                                if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16):
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                            else:
                                require stor6 >= stor6
                                require stor6
                                if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6:
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                    else:
                        if stor6:
                            require stor6
                            require 10^16 * stor6 / stor6 == 10^16
                            require 10^16 * stor6 >= 0
                            require stor6 + (10^16 * stor6 / 10^16) >= stor6
                            require stor6 + (10^16 * stor6 / 10^16)
                            if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400) < 0 / stor6 + (10^16 * stor6 / 10^16):
                                require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                            else:
                                require claimedEggs[address(msg.sender)] + (0 / stor6 + (10^16 * stor6 / 10^16)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += 0 / stor6 + (10^16 * stor6 / 10^16)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                        else:
                            require stor6 >= stor6
                            require stor6
                            if stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400) < 0 / stor6:
                                require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / eth.balance(this.address) / 400)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                            else:
                                require claimedEggs[address(msg.sender)] + (0 / stor6) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += 0 / stor6
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
            else:
                if stor6:
                    require stor6
                    require stor6 * eth.balance(this.address) / 400 / stor6 == eth.balance(this.address) / 400
                    require stor6 * eth.balance(this.address) / 400 >= 0
                    require eth.balance(this.address) / 400
                    require stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) >= stor6
                    require stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)
                    require prizeEth <= eth.balance(this.address)
                    if stor5:
                        require stor5
                        require stor5 * marketEggs / stor5 == marketEggs
                        if stor5:
                            require stor5
                            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - prizeEth
                            if stor6:
                                require stor6
                                require 10^16 * stor6 / stor6 == 10^16
                                require 10^16 * stor6 >= 0
                                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16) >= stor6
                                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)
                                if stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16):
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                            else:
                                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16) >= stor6
                                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)
                                if stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16):
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                        else:
                            if stor6:
                                require stor6
                                require 10^16 * stor6 / stor6 == 10^16
                                require 10^16 * stor6 >= 0
                                require stor6 + (10^16 * stor6 / 10^16) >= stor6
                                require stor6 + (10^16 * stor6 / 10^16)
                                if stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16):
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                            else:
                                require stor6 >= stor6
                                require stor6
                                if stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6:
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                    else:
                        if stor6:
                            require stor6
                            require 10^16 * stor6 / stor6 == 10^16
                            require 10^16 * stor6 >= 0
                            require stor6 + (10^16 * stor6 / 10^16) >= stor6
                            require stor6 + (10^16 * stor6 / 10^16)
                            if stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < 0 / stor6 + (10^16 * stor6 / 10^16):
                                require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                            else:
                                require claimedEggs[address(msg.sender)] + (0 / stor6 + (10^16 * stor6 / 10^16)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += 0 / stor6 + (10^16 * stor6 / 10^16)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                        else:
                            require stor6 >= stor6
                            require stor6
                            if stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < 0 / stor6:
                                require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                            else:
                                require claimedEggs[address(msg.sender)] + (0 / stor6) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += 0 / stor6
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                else:
                    require eth.balance(this.address) / 400
                    require stor6 + (0 / eth.balance(this.address) / 400) >= stor6
                    require stor6 + (0 / eth.balance(this.address) / 400)
                    require prizeEth <= eth.balance(this.address)
                    if stor5:
                        require stor5
                        require stor5 * marketEggs / stor5 == marketEggs
                        if stor5:
                            require stor5
                            require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - prizeEth
                            if stor6:
                                require stor6
                                require 10^16 * stor6 / stor6 == 10^16
                                require 10^16 * stor6 >= 0
                                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16) >= stor6
                                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)
                                if stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16):
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                            else:
                                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16) >= stor6
                                require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)
                                if stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16):
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                        else:
                            if stor6:
                                require stor6
                                require 10^16 * stor6 / stor6 == 10^16
                                require 10^16 * stor6 >= 0
                                require stor6 + (10^16 * stor6 / 10^16) >= stor6
                                require stor6 + (10^16 * stor6 / 10^16)
                                if stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16):
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                            else:
                                require stor6 >= stor6
                                require stor6
                                if stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6:
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400)
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6) >= claimedEggs[address(msg.sender)]
                                    claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6
                                    require initialized
                                    require lastHatch[address(msg.sender)] <= block.timestamp
                                    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                        if EGGS_TO_HATCH_1SHRIMP:
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                    else:
                                        if block.timestamp - lastHatch[address(msg.sender)]:
                                            require block.timestamp - lastHatch[address(msg.sender)]
                                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                                        else:
                                            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                            require EGGS_TO_HATCH_1SHRIMP
                                            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                            totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                            claimedEggs[address(msg.sender)] = 0
                                            lastHatch[address(msg.sender)] = block.timestamp
                                            hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                            require msg.sender != 0
                                            require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                            marketEggs += claimedEggs[address(msg.sender)] / 7
                                            hatchCooldown[address(msg.sender)] = 0
                                            stor17[address(msg.sender)] = 1
                    else:
                        if stor6:
                            require stor6
                            require 10^16 * stor6 / stor6 == 10^16
                            require 10^16 * stor6 >= 0
                            require stor6 + (10^16 * stor6 / 10^16) >= stor6
                            require stor6 + (10^16 * stor6 / 10^16)
                            if stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400) < 0 / stor6 + (10^16 * stor6 / 10^16):
                                require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                            else:
                                require claimedEggs[address(msg.sender)] + (0 / stor6 + (10^16 * stor6 / 10^16)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += 0 / stor6 + (10^16 * stor6 / 10^16)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                        else:
                            require stor6 >= stor6
                            require stor6
                            if stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400) < 0 / stor6:
                                require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + (0 / eth.balance(this.address) / 400)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                            else:
                                require claimedEggs[address(msg.sender)] + (0 / stor6) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += 0 / stor6
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
        else:
            if stor6:
                require stor6
                require stor6 * eth.balance(this.address) / 400 / stor6 == eth.balance(this.address) / 400
                require stor6 * eth.balance(this.address) / 400 >= 0
                require eth.balance(this.address) / 400
                require stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) >= stor6
                require stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)
                require prizeEth <= eth.balance(this.address)
                if stor5:
                    require stor5
                    require stor5 * marketEggs / stor5 == marketEggs
                    if stor5:
                        require stor5
                        require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - prizeEth
                        if stor6:
                            require stor6
                            require 10^16 * stor6 / stor6 == 10^16
                            require 10^16 * stor6 >= 0
                            require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16) >= stor6
                            require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)
                            if 0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16):
                                require claimedEggs[address(msg.sender)] + (0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += 0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                            else:
                                require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                        else:
                            require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16) >= stor6
                            require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)
                            if 0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16):
                                require claimedEggs[address(msg.sender)] + (0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += 0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                            else:
                                require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                    else:
                        if stor6:
                            require stor6
                            require 10^16 * stor6 / stor6 == 10^16
                            require 10^16 * stor6 >= 0
                            require stor6 + (10^16 * stor6 / 10^16) >= stor6
                            require stor6 + (10^16 * stor6 / 10^16)
                            if 0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16):
                                require claimedEggs[address(msg.sender)] + (0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += 0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                            else:
                                require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                        else:
                            require stor6 >= stor6
                            require stor6
                            if 0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6:
                                require claimedEggs[address(msg.sender)] + (0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += 0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                            else:
                                require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                else:
                    if stor6:
                        require stor6
                        require 10^16 * stor6 / stor6 == 10^16
                        require 10^16 * stor6 >= 0
                        require stor6 + (10^16 * stor6 / 10^16) >= stor6
                        require stor6 + (10^16 * stor6 / 10^16)
                        if 0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < 0 / stor6 + (10^16 * stor6 / 10^16):
                            require claimedEggs[address(msg.sender)] + (0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                            claimedEggs[address(msg.sender)] += 0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)
                            require initialized
                            require lastHatch[address(msg.sender)] <= block.timestamp
                            if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                if EGGS_TO_HATCH_1SHRIMP:
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                    require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                            else:
                                if block.timestamp - lastHatch[address(msg.sender)]:
                                    require block.timestamp - lastHatch[address(msg.sender)]
                                    require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                    require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                        else:
                            require claimedEggs[address(msg.sender)] + (0 / stor6 + (10^16 * stor6 / 10^16)) >= claimedEggs[address(msg.sender)]
                            claimedEggs[address(msg.sender)] += 0 / stor6 + (10^16 * stor6 / 10^16)
                            require initialized
                            require lastHatch[address(msg.sender)] <= block.timestamp
                            if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                if EGGS_TO_HATCH_1SHRIMP:
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                    require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                            else:
                                if block.timestamp - lastHatch[address(msg.sender)]:
                                    require block.timestamp - lastHatch[address(msg.sender)]
                                    require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                    require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                    else:
                        require stor6 >= stor6
                        require stor6
                        if 0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400) < 0 / stor6:
                            require claimedEggs[address(msg.sender)] + (0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                            claimedEggs[address(msg.sender)] += 0 / stor6 + (stor6 * eth.balance(this.address) / 400 / eth.balance(this.address) / 400)
                            require initialized
                            require lastHatch[address(msg.sender)] <= block.timestamp
                            if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                if EGGS_TO_HATCH_1SHRIMP:
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                    require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                            else:
                                if block.timestamp - lastHatch[address(msg.sender)]:
                                    require block.timestamp - lastHatch[address(msg.sender)]
                                    require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                    require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                        else:
                            require claimedEggs[address(msg.sender)] + (0 / stor6) >= claimedEggs[address(msg.sender)]
                            claimedEggs[address(msg.sender)] += 0 / stor6
                            require initialized
                            require lastHatch[address(msg.sender)] <= block.timestamp
                            if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                if EGGS_TO_HATCH_1SHRIMP:
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                    require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                            else:
                                if block.timestamp - lastHatch[address(msg.sender)]:
                                    require block.timestamp - lastHatch[address(msg.sender)]
                                    require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                    require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
            else:
                require eth.balance(this.address) / 400
                require stor6 + (0 / eth.balance(this.address) / 400) >= stor6
                require stor6 + (0 / eth.balance(this.address) / 400)
                require prizeEth <= eth.balance(this.address)
                if stor5:
                    require stor5
                    require stor5 * marketEggs / stor5 == marketEggs
                    if stor5:
                        require stor5
                        require (eth.balance(this.address) * stor5) - (prizeEth * stor5) / stor5 == eth.balance(this.address) - prizeEth
                        if stor6:
                            require stor6
                            require 10^16 * stor6 / stor6 == 10^16
                            require 10^16 * stor6 >= 0
                            require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16) >= stor6
                            require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)
                            if 0 / stor6 + (0 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16):
                                require claimedEggs[address(msg.sender)] + (0 / stor6 + (0 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += 0 / stor6 + (0 / eth.balance(this.address) / 400)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                            else:
                                require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) + (10^16 * stor6) / 10^16)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                        else:
                            require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16) >= stor6
                            require stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)
                            if 0 / stor6 + (0 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16):
                                require claimedEggs[address(msg.sender)] + (0 / stor6 + (0 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += 0 / stor6 + (0 / eth.balance(this.address) / 400)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                            else:
                                require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + ((eth.balance(this.address) * stor5) - (prizeEth * stor5) / 10^16)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                    else:
                        if stor6:
                            require stor6
                            require 10^16 * stor6 / stor6 == 10^16
                            require 10^16 * stor6 >= 0
                            require stor6 + (10^16 * stor6 / 10^16) >= stor6
                            require stor6 + (10^16 * stor6 / 10^16)
                            if 0 / stor6 + (0 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16):
                                require claimedEggs[address(msg.sender)] + (0 / stor6 + (0 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += 0 / stor6 + (0 / eth.balance(this.address) / 400)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                            else:
                                require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6 + (10^16 * stor6 / 10^16)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                        else:
                            require stor6 >= stor6
                            require stor6
                            if 0 / stor6 + (0 / eth.balance(this.address) / 400) < stor5 * marketEggs / stor6:
                                require claimedEggs[address(msg.sender)] + (0 / stor6 + (0 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += 0 / stor6 + (0 / eth.balance(this.address) / 400)
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                            else:
                                require claimedEggs[address(msg.sender)] + (stor5 * marketEggs / stor6) >= claimedEggs[address(msg.sender)]
                                claimedEggs[address(msg.sender)] += stor5 * marketEggs / stor6
                                require initialized
                                require lastHatch[address(msg.sender)] <= block.timestamp
                                if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                    if EGGS_TO_HATCH_1SHRIMP:
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                else:
                                    if block.timestamp - lastHatch[address(msg.sender)]:
                                        require block.timestamp - lastHatch[address(msg.sender)]
                                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                                    else:
                                        require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                        require EGGS_TO_HATCH_1SHRIMP
                                        require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                        hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                        totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                        claimedEggs[address(msg.sender)] = 0
                                        lastHatch[address(msg.sender)] = block.timestamp
                                        hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                        require msg.sender != 0
                                        require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                        marketEggs += claimedEggs[address(msg.sender)] / 7
                                        hatchCooldown[address(msg.sender)] = 0
                                        stor17[address(msg.sender)] = 1
                else:
                    if stor6:
                        require stor6
                        require 10^16 * stor6 / stor6 == 10^16
                        require 10^16 * stor6 >= 0
                        require stor6 + (10^16 * stor6 / 10^16) >= stor6
                        require stor6 + (10^16 * stor6 / 10^16)
                        if 0 / stor6 + (0 / eth.balance(this.address) / 400) < 0 / stor6 + (10^16 * stor6 / 10^16):
                            require claimedEggs[address(msg.sender)] + (0 / stor6 + (0 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                            claimedEggs[address(msg.sender)] += 0 / stor6 + (0 / eth.balance(this.address) / 400)
                            require initialized
                            require lastHatch[address(msg.sender)] <= block.timestamp
                            if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                if EGGS_TO_HATCH_1SHRIMP:
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                    require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                            else:
                                if block.timestamp - lastHatch[address(msg.sender)]:
                                    require block.timestamp - lastHatch[address(msg.sender)]
                                    require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                    require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                        else:
                            require claimedEggs[address(msg.sender)] + (0 / stor6 + (10^16 * stor6 / 10^16)) >= claimedEggs[address(msg.sender)]
                            claimedEggs[address(msg.sender)] += 0 / stor6 + (10^16 * stor6 / 10^16)
                            require initialized
                            require lastHatch[address(msg.sender)] <= block.timestamp
                            if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                if EGGS_TO_HATCH_1SHRIMP:
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                    require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                            else:
                                if block.timestamp - lastHatch[address(msg.sender)]:
                                    require block.timestamp - lastHatch[address(msg.sender)]
                                    require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                    require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                    else:
                        require stor6 >= stor6
                        require stor6
                        if 0 / stor6 + (0 / eth.balance(this.address) / 400) < 0 / stor6:
                            require claimedEggs[address(msg.sender)] + (0 / stor6 + (0 / eth.balance(this.address) / 400)) >= claimedEggs[address(msg.sender)]
                            claimedEggs[address(msg.sender)] += 0 / stor6 + (0 / eth.balance(this.address) / 400)
                            require initialized
                            require lastHatch[address(msg.sender)] <= block.timestamp
                            if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                if EGGS_TO_HATCH_1SHRIMP:
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                    require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                            else:
                                if block.timestamp - lastHatch[address(msg.sender)]:
                                    require block.timestamp - lastHatch[address(msg.sender)]
                                    require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                    require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                        else:
                            require claimedEggs[address(msg.sender)] + (0 / stor6) >= claimedEggs[address(msg.sender)]
                            claimedEggs[address(msg.sender)] += 0 / stor6
                            require initialized
                            require lastHatch[address(msg.sender)] <= block.timestamp
                            if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
                                if EGGS_TO_HATCH_1SHRIMP:
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
                                    require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                            else:
                                if block.timestamp - lastHatch[address(msg.sender)]:
                                    require block.timestamp - lastHatch[address(msg.sender)]
                                    require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
                                    require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
                                else:
                                    require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
                                    require EGGS_TO_HATCH_1SHRIMP
                                    require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
                                    hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    require totalHatcheryShrimp + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= totalHatcheryShrimp
                                    totalHatcheryShrimp += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
                                    claimedEggs[address(msg.sender)] = 0
                                    lastHatch[address(msg.sender)] = block.timestamp
                                    hatchCooldown[address(msg.sender)] = HATCH_COOLDOWN_MAX
                                    require msg.sender != 0
                                    require marketEggs + (claimedEggs[address(msg.sender)] / 7) >= marketEggs
                                    marketEggs += claimedEggs[address(msg.sender)] / 7
                                    hatchCooldown[address(msg.sender)] = 0
                                    stor17[address(msg.sender)] = 1
}



}
