contract main {




// =====================  Runtime code  =====================


address tokenContractAddress;
uint256 EGGS_TO_HATCH_1SHRIMP;
uint256 STARTING_SHRIMP;
uint256 stor3;
uint256 stor4;
uint8 stor5;
address stor5;
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
    return bool(uint8(stor5.field_0))
}

function marketEggs() {
    return marketEggs
}

function lastHatch(address arg1) {
    return lastHatch[arg1]
}

function tokenContract() {
    return tokenContractAddress
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
    return hatcheryShrimp[msg.sender]
}

function STARTING_SHRIMP() {
    return STARTING_SHRIMP
}

function _fallback() payable {
  stop
}

function devFee(uint256 arg1) {
    if not arg1:
        return 0
    require 4 * arg1 / arg1 == 4
    return (4 * arg1 / 100)
}

function seedMarket(uint256 arg1) {
    require not marketEggs
    require msg.sender == ceoAddress
    uint8(stor5.field_0) = 1
    marketEggs = arg1
}

function getBalance() {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.myTokens() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getContractDividends() {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.myDividends(bool arg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function reinvest() {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.myDividends(bool arg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 1:
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xfdb5a03e with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
            if claimedEggs[msg.sender] >= claimedEggs[msg.sender]:
                return claimedEggs[msg.sender]
        else:
            if hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]:
                if (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]:
                    return ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender])
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            if claimedEggs[msg.sender] >= claimedEggs[msg.sender]:
                return claimedEggs[msg.sender]
        else:
            if (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]:
                if (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]:
                    return ((block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender])
    revert
}

function calculateTrade(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not stor3:
        if not stor4:
            if arg1:
                if (0 / arg1) + stor4 >= stor4:
                    if (0 / arg1) + stor4:
                        return (0 / (0 / arg1) + stor4)
        else:
            if arg1 * stor4 / stor4 == arg1:
                if arg1 * stor4 >= 0:
                    if arg1:
                        if (arg1 * stor4 / arg1) + stor4 >= stor4:
                            if (arg1 * stor4 / arg1) + stor4:
                                return (0 / (arg1 * stor4 / arg1) + stor4)
    else:
        if arg3 * stor3 / stor3 == arg3:
            if not stor3:
                if not stor4:
                    if arg1:
                        if (0 / arg1) + stor4 >= stor4:
                            if (0 / arg1) + stor4:
                                return (arg3 * stor3 / (0 / arg1) + stor4)
                else:
                    if arg1 * stor4 / stor4 == arg1:
                        if arg1 * stor4 >= 0:
                            if arg1:
                                if (arg1 * stor4 / arg1) + stor4 >= stor4:
                                    if (arg1 * stor4 / arg1) + stor4:
                                        return (arg3 * stor3 / (arg1 * stor4 / arg1) + stor4)
            else:
                if arg2 * stor3 / stor3 == arg2:
                    if not stor4:
                        if arg2 * stor3 >= arg2 * stor3:
                            if arg1:
                                if (arg2 * stor3 / arg1) + stor4 >= stor4:
                                    if (arg2 * stor3 / arg1) + stor4:
                                        return (arg3 * stor3 / (arg2 * stor3 / arg1) + stor4)
                    else:
                        if arg1 * stor4 / stor4 == arg1:
                            if (arg1 * stor4) + (arg2 * stor3) >= arg2 * stor3:
                                if arg1:
                                    if ((arg1 * stor4) + (arg2 * stor3) / arg1) + stor4 >= stor4:
                                        if ((arg1 * stor4) + (arg2 * stor3) / arg1) + stor4:
                                            return (arg3 * stor3 / ((arg1 * stor4) + (arg2 * stor3) / arg1) + stor4)
    revert
}

function calculateEggBuy(uint256 arg1, uint256 arg2) {
    if not stor3:
        if not stor4:
            if arg1:
                if (0 / arg1) + stor4 >= stor4:
                    if (0 / arg1) + stor4:
                        return (0 / (0 / arg1) + stor4)
        else:
            if arg1 * stor4 / stor4 == arg1:
                if arg1 * stor4 >= 0:
                    if arg1:
                        if (arg1 * stor4 / arg1) + stor4 >= stor4:
                            if (arg1 * stor4 / arg1) + stor4:
                                return (0 / (arg1 * stor4 / arg1) + stor4)
    else:
        if marketEggs * stor3 / stor3 == marketEggs:
            if not stor3:
                if not stor4:
                    if arg1:
                        if (0 / arg1) + stor4 >= stor4:
                            if (0 / arg1) + stor4:
                                return (marketEggs * stor3 / (0 / arg1) + stor4)
                else:
                    if arg1 * stor4 / stor4 == arg1:
                        if arg1 * stor4 >= 0:
                            if arg1:
                                if (arg1 * stor4 / arg1) + stor4 >= stor4:
                                    if (arg1 * stor4 / arg1) + stor4:
                                        return (marketEggs * stor3 / (arg1 * stor4 / arg1) + stor4)
            else:
                if arg2 * stor3 / stor3 == arg2:
                    if not stor4:
                        if arg2 * stor3 >= arg2 * stor3:
                            if arg1:
                                if (arg2 * stor3 / arg1) + stor4 >= stor4:
                                    if (arg2 * stor3 / arg1) + stor4:
                                        return (marketEggs * stor3 / (arg2 * stor3 / arg1) + stor4)
                    else:
                        if arg1 * stor4 / stor4 == arg1:
                            if (arg1 * stor4) + (arg2 * stor3) >= arg2 * stor3:
                                if arg1:
                                    if ((arg1 * stor4) + (arg2 * stor3) / arg1) + stor4 >= stor4:
                                        if ((arg1 * stor4) + (arg2 * stor3) / arg1) + stor4:
                                            return (marketEggs * stor3 / ((arg1 * stor4) + (arg2 * stor3) / arg1) + stor4)
    revert
}

function calculateEggSell(uint256 arg1) {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.myTokens() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor3:
        if not stor4:
            if arg1:
                if (0 / arg1) + stor4 >= stor4:
                    if (0 / arg1) + stor4:
                        return (0 / (0 / arg1) + stor4)
        else:
            if arg1 * stor4 / stor4 == arg1:
                if arg1 * stor4 >= 0:
                    if arg1:
                        if (arg1 * stor4 / arg1) + stor4 >= stor4:
                            if (arg1 * stor4 / arg1) + stor4:
                                return (0 / (arg1 * stor4 / arg1) + stor4)
    else:
        if ext_call.return_data[0] * stor3 / stor3 == ext_call.return_data[0]:
            if not stor3:
                if not stor4:
                    if arg1:
                        if (0 / arg1) + stor4 >= stor4:
                            if (0 / arg1) + stor4:
                                return (ext_call.return_data[0] * stor3 / (0 / arg1) + stor4)
                else:
                    if arg1 * stor4 / stor4 == arg1:
                        if arg1 * stor4 >= 0:
                            if arg1:
                                if (arg1 * stor4 / arg1) + stor4 >= stor4:
                                    if (arg1 * stor4 / arg1) + stor4:
                                        return (ext_call.return_data[0] * stor3 / (arg1 * stor4 / arg1) + stor4)
            else:
                if marketEggs * stor3 / stor3 == marketEggs:
                    if not stor4:
                        if marketEggs * stor3 >= marketEggs * stor3:
                            if arg1:
                                if (marketEggs * stor3 / arg1) + stor4 >= stor4:
                                    if (marketEggs * stor3 / arg1) + stor4:
                                        return (ext_call.return_data[0] * stor3 / (marketEggs * stor3 / arg1) + stor4)
                    else:
                        if arg1 * stor4 / stor4 == arg1:
                            if (arg1 * stor4) + (marketEggs * stor3) >= marketEggs * stor3:
                                if arg1:
                                    if ((arg1 * stor4) + (marketEggs * stor3) / arg1) + stor4 >= stor4:
                                        if ((arg1 * stor4) + (marketEggs * stor3) / arg1) + stor4:
                                            return (ext_call.return_data[0] * stor3 / ((arg1 * stor4) + (marketEggs * stor3) / arg1) + stor4)
    revert
}

function calculateEggBuySimple(uint256 arg1) {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.myTokens() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor3:
        if not stor4:
            if arg1:
                if (0 / arg1) + stor4 >= stor4:
                    if (0 / arg1) + stor4:
                        return (0 / (0 / arg1) + stor4)
        else:
            if arg1 * stor4 / stor4 == arg1:
                if arg1 * stor4 >= 0:
                    if arg1:
                        if (arg1 * stor4 / arg1) + stor4 >= stor4:
                            if (arg1 * stor4 / arg1) + stor4:
                                return (0 / (arg1 * stor4 / arg1) + stor4)
    else:
        if marketEggs * stor3 / stor3 == marketEggs:
            if not stor3:
                if not stor4:
                    if arg1:
                        if (0 / arg1) + stor4 >= stor4:
                            if (0 / arg1) + stor4:
                                return (marketEggs * stor3 / (0 / arg1) + stor4)
                else:
                    if arg1 * stor4 / stor4 == arg1:
                        if arg1 * stor4 >= 0:
                            if arg1:
                                if (arg1 * stor4 / arg1) + stor4 >= stor4:
                                    if (arg1 * stor4 / arg1) + stor4:
                                        return (marketEggs * stor3 / (arg1 * stor4 / arg1) + stor4)
            else:
                if ext_call.return_data[0] * stor3 / stor3 == ext_call.return_data[0]:
                    if not stor4:
                        if ext_call.return_data[0] * stor3 >= ext_call.return_data[0] * stor3:
                            if arg1:
                                if (ext_call.return_data[0] * stor3 / arg1) + stor4 >= stor4:
                                    if (ext_call.return_data[0] * stor3 / arg1) + stor4:
                                        return (marketEggs * stor3 / (ext_call.return_data[0] * stor3 / arg1) + stor4)
                    else:
                        if arg1 * stor4 / stor4 == arg1:
                            if (arg1 * stor4) + (ext_call.return_data[0] * stor3) >= ext_call.return_data[0] * stor3:
                                if arg1:
                                    if ((arg1 * stor4) + (ext_call.return_data[0] * stor3) / arg1) + stor4 >= stor4:
                                        if ((arg1 * stor4) + (ext_call.return_data[0] * stor3) / arg1) + stor4:
                                            return (marketEggs * stor3 / ((arg1 * stor4) + (ext_call.return_data[0] * stor3) / arg1) + stor4)
    revert
}

function hatchEggs(address arg1) {
    require uint8(stor5.field_0)
    if not referrals[msg.sender]:
        if referrals[msg.sender] != msg.sender:
            referrals[msg.sender] = arg1
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1SHRIMP:
            require claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1SHRIMP
            require (claimedEggs[msg.sender] / EGGS_TO_HATCH_1SHRIMP) + hatcheryShrimp[msg.sender] >= hatcheryShrimp[msg.sender]
            hatcheryShrimp[msg.sender] += claimedEggs[msg.sender] / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            require (claimedEggs[msg.sender] / 5) + claimedEggs[stor9[msg.sender]] >= claimedEggs[stor9[msg.sender]]
            claimedEggs[stor9[msg.sender]] += claimedEggs[msg.sender] / 5
            require (claimedEggs[msg.sender] / 10) + marketEggs >= marketEggs
            marketEggs += claimedEggs[msg.sender] / 10
        else:
            require hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
            require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1SHRIMP
            require ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] / EGGS_TO_HATCH_1SHRIMP) + hatcheryShrimp[msg.sender] >= hatcheryShrimp[msg.sender]
            hatcheryShrimp[msg.sender] += (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            require ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] / 5) + claimedEggs[stor9[msg.sender]] >= claimedEggs[stor9[msg.sender]]
            claimedEggs[stor9[msg.sender]] += (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] / 5
            require ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] / 10) + marketEggs >= marketEggs
            marketEggs += (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] / 10
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1SHRIMP
            require (claimedEggs[msg.sender] / EGGS_TO_HATCH_1SHRIMP) + hatcheryShrimp[msg.sender] >= hatcheryShrimp[msg.sender]
            hatcheryShrimp[msg.sender] += claimedEggs[msg.sender] / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            require (claimedEggs[msg.sender] / 5) + claimedEggs[stor9[msg.sender]] >= claimedEggs[stor9[msg.sender]]
            claimedEggs[stor9[msg.sender]] += claimedEggs[msg.sender] / 5
            require (claimedEggs[msg.sender] / 10) + marketEggs >= marketEggs
            marketEggs += claimedEggs[msg.sender] / 10
        else:
            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1SHRIMP
            require ((block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] / EGGS_TO_HATCH_1SHRIMP) + hatcheryShrimp[msg.sender] >= hatcheryShrimp[msg.sender]
            hatcheryShrimp[msg.sender] += (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            require ((block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] / 5) + claimedEggs[stor9[msg.sender]] >= claimedEggs[stor9[msg.sender]]
            claimedEggs[stor9[msg.sender]] += (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] / 5
            require ((block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] / 10) + marketEggs >= marketEggs
            marketEggs += (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] / 10
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require msg.sender == tokenContractAddress
    require uint8(stor5.field_0)
    require ext_code.size(arg1) <= 0
    require arg2 >= 10^15
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.myTokens() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= ext_call.return_data[0]
    if not stor3:
        if not stor4:
            require arg2
            require (0 / arg2) + stor4 >= stor4
            require (0 / arg2) + stor4
            if not 0 / (0 / arg2) + stor4:
                require 0 <= 0 / (0 / arg2) + stor4
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.myDividends(bool arg1) with:
                     gas gas_remaining wei
                    args 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 1:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xfdb5a03e with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if not arg2:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor5.field_0), 0
                else:
                    require 4 * arg2 / arg2 == 4
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor5.field_0), 4 * arg2 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (0 / (0 / arg2) + stor4) + claimedEggs[address(arg1)] >= claimedEggs[address(arg1)]
                claimedEggs[address(arg1)] += 0 / (0 / arg2) + stor4
            else:
                require 4 * 0 / (0 / arg2) + stor4 / 0 / (0 / arg2) + stor4 == 4
                require 4 * 0 / (0 / arg2) + stor4 / 100 <= 0 / (0 / arg2) + stor4
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.myDividends(bool arg1) with:
                     gas gas_remaining wei
                    args 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 1:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xfdb5a03e with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if not arg2:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor5.field_0), 0
                else:
                    require 4 * arg2 / arg2 == 4
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor5.field_0), 4 * arg2 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (0 / (0 / arg2) + stor4) - (4 * 0 / (0 / arg2) + stor4 / 100) + claimedEggs[address(arg1)] >= claimedEggs[address(arg1)]
                claimedEggs[address(arg1)] = (0 / (0 / arg2) + stor4) - (4 * 0 / (0 / arg2) + stor4 / 100) + claimedEggs[address(arg1)]
        else:
            require arg2 * stor4 / stor4 == arg2
            require arg2 * stor4 >= 0
            require arg2
            require (arg2 * stor4 / arg2) + stor4 >= stor4
            require (arg2 * stor4 / arg2) + stor4
            if not 0 / (arg2 * stor4 / arg2) + stor4:
                require 0 <= 0 / (arg2 * stor4 / arg2) + stor4
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.myDividends(bool arg1) with:
                     gas gas_remaining wei
                    args 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 1:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xfdb5a03e with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if not arg2:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor5.field_0), 0
                else:
                    require 4 * arg2 / arg2 == 4
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor5.field_0), 4 * arg2 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (0 / (arg2 * stor4 / arg2) + stor4) + claimedEggs[address(arg1)] >= claimedEggs[address(arg1)]
                claimedEggs[address(arg1)] += 0 / (arg2 * stor4 / arg2) + stor4
            else:
                require 4 * 0 / (arg2 * stor4 / arg2) + stor4 / 0 / (arg2 * stor4 / arg2) + stor4 == 4
                require 4 * 0 / (arg2 * stor4 / arg2) + stor4 / 100 <= 0 / (arg2 * stor4 / arg2) + stor4
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.myDividends(bool arg1) with:
                     gas gas_remaining wei
                    args 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 1:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xfdb5a03e with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if not arg2:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor5.field_0), 0
                else:
                    require 4 * arg2 / arg2 == 4
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor5.field_0), 4 * arg2 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (0 / (arg2 * stor4 / arg2) + stor4) - (4 * 0 / (arg2 * stor4 / arg2) + stor4 / 100) + claimedEggs[address(arg1)] >= claimedEggs[address(arg1)]
                claimedEggs[address(arg1)] = (0 / (arg2 * stor4 / arg2) + stor4) - (4 * 0 / (arg2 * stor4 / arg2) + stor4 / 100) + claimedEggs[address(arg1)]
    else:
        require marketEggs * stor3 / stor3 == marketEggs
        if not stor3:
            if not stor4:
                require arg2
                require (0 / arg2) + stor4 >= stor4
                require (0 / arg2) + stor4
                if not marketEggs * stor3 / (0 / arg2) + stor4:
                    require 0 <= marketEggs * stor3 / (0 / arg2) + stor4
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.myDividends(bool arg1) with:
                         gas gas_remaining wei
                        args 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 1:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xfdb5a03e with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 0
                    else:
                        require 4 * arg2 / arg2 == 4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 4 * arg2 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (marketEggs * stor3 / (0 / arg2) + stor4) + claimedEggs[address(arg1)] >= claimedEggs[address(arg1)]
                    claimedEggs[address(arg1)] += marketEggs * stor3 / (0 / arg2) + stor4
                else:
                    require 4 * marketEggs * stor3 / (0 / arg2) + stor4 / marketEggs * stor3 / (0 / arg2) + stor4 == 4
                    require 4 * marketEggs * stor3 / (0 / arg2) + stor4 / 100 <= marketEggs * stor3 / (0 / arg2) + stor4
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.myDividends(bool arg1) with:
                         gas gas_remaining wei
                        args 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 1:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xfdb5a03e with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 0
                    else:
                        require 4 * arg2 / arg2 == 4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 4 * arg2 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (marketEggs * stor3 / (0 / arg2) + stor4) - (4 * marketEggs * stor3 / (0 / arg2) + stor4 / 100) + claimedEggs[address(arg1)] >= claimedEggs[address(arg1)]
                    claimedEggs[address(arg1)] = (marketEggs * stor3 / (0 / arg2) + stor4) - (4 * marketEggs * stor3 / (0 / arg2) + stor4 / 100) + claimedEggs[address(arg1)]
            else:
                require arg2 * stor4 / stor4 == arg2
                require arg2 * stor4 >= 0
                require arg2
                require (arg2 * stor4 / arg2) + stor4 >= stor4
                require (arg2 * stor4 / arg2) + stor4
                if not marketEggs * stor3 / (arg2 * stor4 / arg2) + stor4:
                    require 0 <= marketEggs * stor3 / (arg2 * stor4 / arg2) + stor4
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.myDividends(bool arg1) with:
                         gas gas_remaining wei
                        args 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 1:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xfdb5a03e with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 0
                    else:
                        require 4 * arg2 / arg2 == 4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 4 * arg2 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (marketEggs * stor3 / (arg2 * stor4 / arg2) + stor4) + claimedEggs[address(arg1)] >= claimedEggs[address(arg1)]
                    claimedEggs[address(arg1)] += marketEggs * stor3 / (arg2 * stor4 / arg2) + stor4
                else:
                    require 4 * marketEggs * stor3 / (arg2 * stor4 / arg2) + stor4 / marketEggs * stor3 / (arg2 * stor4 / arg2) + stor4 == 4
                    require 4 * marketEggs * stor3 / (arg2 * stor4 / arg2) + stor4 / 100 <= marketEggs * stor3 / (arg2 * stor4 / arg2) + stor4
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.myDividends(bool arg1) with:
                         gas gas_remaining wei
                        args 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 1:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xfdb5a03e with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 0
                    else:
                        require 4 * arg2 / arg2 == 4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 4 * arg2 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (marketEggs * stor3 / (arg2 * stor4 / arg2) + stor4) - (4 * marketEggs * stor3 / (arg2 * stor4 / arg2) + stor4 / 100) + claimedEggs[address(arg1)] >= claimedEggs[address(arg1)]
                    claimedEggs[address(arg1)] = (marketEggs * stor3 / (arg2 * stor4 / arg2) + stor4) - (4 * marketEggs * stor3 / (arg2 * stor4 / arg2) + stor4 / 100) + claimedEggs[address(arg1)]
        else:
            require (ext_call.return_data[0] * stor3) - (arg2 * stor3) / stor3 == ext_call.return_data[0] - arg2
            if not stor4:
                require arg2
                require ((ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4 >= stor4
                require ((ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4
                if not marketEggs * stor3 / ((ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4:
                    require 0 <= marketEggs * stor3 / ((ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.myDividends(bool arg1) with:
                         gas gas_remaining wei
                        args 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 1:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xfdb5a03e with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 0
                    else:
                        require 4 * arg2 / arg2 == 4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 4 * arg2 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (marketEggs * stor3 / ((ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4) + claimedEggs[address(arg1)] >= claimedEggs[address(arg1)]
                    claimedEggs[address(arg1)] += marketEggs * stor3 / ((ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4
                else:
                    require 4 * marketEggs * stor3 / ((ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4 / marketEggs * stor3 / ((ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4 == 4
                    require 4 * marketEggs * stor3 / ((ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4 / 100 <= marketEggs * stor3 / ((ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.myDividends(bool arg1) with:
                         gas gas_remaining wei
                        args 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 1:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xfdb5a03e with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 0
                    else:
                        require 4 * arg2 / arg2 == 4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 4 * arg2 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (marketEggs * stor3 / ((ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4) - (4 * marketEggs * stor3 / ((ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4 / 100) + claimedEggs[address(arg1)] >= claimedEggs[address(arg1)]
                    claimedEggs[address(arg1)] = (marketEggs * stor3 / ((ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4) - (4 * marketEggs * stor3 / ((ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4 / 100) + claimedEggs[address(arg1)]
            else:
                require arg2 * stor4 / stor4 == arg2
                require arg2 * stor4 >= 0
                require arg2
                require ((arg2 * stor4) + (ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4 >= stor4
                require ((arg2 * stor4) + (ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4
                if not marketEggs * stor3 / ((arg2 * stor4) + (ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4:
                    require 0 <= marketEggs * stor3 / ((arg2 * stor4) + (ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.myDividends(bool arg1) with:
                         gas gas_remaining wei
                        args 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 1:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xfdb5a03e with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 0
                    else:
                        require 4 * arg2 / arg2 == 4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 4 * arg2 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (marketEggs * stor3 / ((arg2 * stor4) + (ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4) + claimedEggs[address(arg1)] >= claimedEggs[address(arg1)]
                    claimedEggs[address(arg1)] += marketEggs * stor3 / ((arg2 * stor4) + (ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4
                else:
                    require 4 * marketEggs * stor3 / ((arg2 * stor4) + (ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4 / marketEggs * stor3 / ((arg2 * stor4) + (ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4 == 4
                    require 4 * marketEggs * stor3 / ((arg2 * stor4) + (ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4 / 100 <= marketEggs * stor3 / ((arg2 * stor4) + (ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.myDividends(bool arg1) with:
                         gas gas_remaining wei
                        args 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 1:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xfdb5a03e with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 0
                    else:
                        require 4 * arg2 / arg2 == 4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 4 * arg2 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (marketEggs * stor3 / ((arg2 * stor4) + (ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4) - (4 * marketEggs * stor3 / ((arg2 * stor4) + (ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4 / 100) + claimedEggs[address(arg1)] >= claimedEggs[address(arg1)]
                    claimedEggs[address(arg1)] = (marketEggs * stor3 / ((arg2 * stor4) + (ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4) - (4 * marketEggs * stor3 / ((arg2 * stor4) + (ext_call.return_data[0] * stor3) - (arg2 * stor3) / arg2) + stor4 / 100) + claimedEggs[address(arg1)]
    return 1
}

function sellEggs() {
    require uint8(stor5.field_0)
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1SHRIMP:
            require claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.myTokens() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor3:
                if not stor4:
                    require claimedEggs[msg.sender]
                    require (0 / claimedEggs[msg.sender]) + stor4 >= stor4
                    require (0 / claimedEggs[msg.sender]) + stor4
                    if not 0 / (0 / claimedEggs[msg.sender]) + stor4:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.myDividends(bool arg1) with:
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        if ext_call.return_data[0] > 1:
                            call tokenContractAddress.0xfdb5a03e with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / (0 / claimedEggs[msg.sender]) + stor4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / (0 / claimedEggs[msg.sender]) + stor4
                    else:
                        require 4 * 0 / (0 / claimedEggs[msg.sender]) + stor4 / 0 / (0 / claimedEggs[msg.sender]) + stor4 == 4
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.myDividends(bool arg1) with:
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        if ext_call.return_data[0] > 1:
                            call tokenContractAddress.0xfdb5a03e with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 4 * 0 / (0 / claimedEggs[msg.sender]) + stor4 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 4 * 0 / (0 / claimedEggs[msg.sender]) + stor4 / 100 <= 0 / (0 / claimedEggs[msg.sender]) + stor4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (0 / claimedEggs[msg.sender]) + stor4) - (4 * 0 / (0 / claimedEggs[msg.sender]) + stor4 / 100)
                else:
                    require claimedEggs[msg.sender] * stor4 / stor4 == claimedEggs[msg.sender]
                    require claimedEggs[msg.sender] * stor4 >= 0
                    require claimedEggs[msg.sender]
                    require (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 >= stor4
                    require (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4
                    if not 0 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.myDividends(bool arg1) with:
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        if ext_call.return_data[0] > 1:
                            call tokenContractAddress.0xfdb5a03e with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4
                    else:
                        require 4 * 0 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 / 0 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 == 4
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.myDividends(bool arg1) with:
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        if ext_call.return_data[0] > 1:
                            call tokenContractAddress.0xfdb5a03e with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 4 * 0 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 4 * 0 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 / 100 <= 0 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4) - (4 * 0 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 / 100)
            else:
                require ext_call.return_data[0] * stor3 / stor3 == ext_call.return_data[0]
                if not stor3:
                    if not stor4:
                        require claimedEggs[msg.sender]
                        require (0 / claimedEggs[msg.sender]) + stor4 >= stor4
                        require (0 / claimedEggs[msg.sender]) + stor4
                        if not ext_call.return_data[0] * stor3 / (0 / claimedEggs[msg.sender]) + stor4:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor3 / (0 / claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor3 / (0 / claimedEggs[msg.sender]) + stor4
                        else:
                            require 4 * ext_call.return_data[0] * stor3 / (0 / claimedEggs[msg.sender]) + stor4 / ext_call.return_data[0] * stor3 / (0 / claimedEggs[msg.sender]) + stor4 == 4
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 4 * ext_call.return_data[0] * stor3 / (0 / claimedEggs[msg.sender]) + stor4 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 4 * ext_call.return_data[0] * stor3 / (0 / claimedEggs[msg.sender]) + stor4 / 100 <= ext_call.return_data[0] * stor3 / (0 / claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor3 / (0 / claimedEggs[msg.sender]) + stor4) - (4 * ext_call.return_data[0] * stor3 / (0 / claimedEggs[msg.sender]) + stor4 / 100)
                    else:
                        require claimedEggs[msg.sender] * stor4 / stor4 == claimedEggs[msg.sender]
                        require claimedEggs[msg.sender] * stor4 >= 0
                        require claimedEggs[msg.sender]
                        require (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 >= stor4
                        require (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4
                        if not ext_call.return_data[0] * stor3 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor3 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor3 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4
                        else:
                            require 4 * ext_call.return_data[0] * stor3 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 / ext_call.return_data[0] * stor3 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 == 4
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 4 * ext_call.return_data[0] * stor3 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 4 * ext_call.return_data[0] * stor3 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 / 100 <= ext_call.return_data[0] * stor3 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor3 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4) - (4 * ext_call.return_data[0] * stor3 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 / 100)
                else:
                    require marketEggs * stor3 / stor3 == marketEggs
                    if not stor4:
                        require marketEggs * stor3 >= marketEggs * stor3
                        require claimedEggs[msg.sender]
                        require (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4 >= stor4
                        require (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4
                        if not ext_call.return_data[0] * stor3 / (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor3 / (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor3 / (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4
                        else:
                            require 4 * ext_call.return_data[0] * stor3 / (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4 / ext_call.return_data[0] * stor3 / (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4 == 4
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 4 * ext_call.return_data[0] * stor3 / (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 4 * ext_call.return_data[0] * stor3 / (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4 / 100 <= ext_call.return_data[0] * stor3 / (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor3 / (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4) - (4 * ext_call.return_data[0] * stor3 / (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4 / 100)
                    else:
                        require claimedEggs[msg.sender] * stor4 / stor4 == claimedEggs[msg.sender]
                        require (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) >= marketEggs * stor3
                        require claimedEggs[msg.sender]
                        require ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4 >= stor4
                        require ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4
                        if not ext_call.return_data[0] * stor3 / ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor3 / ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor3 / ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4
                        else:
                            require 4 * ext_call.return_data[0] * stor3 / ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4 / ext_call.return_data[0] * stor3 / ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4 == 4
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 4 * ext_call.return_data[0] * stor3 / ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 4 * ext_call.return_data[0] * stor3 / ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4 / 100 <= ext_call.return_data[0] * stor3 / ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor3 / ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4) - (4 * ext_call.return_data[0] * stor3 / ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4 / 100)
        else:
            require hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
            require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.myTokens() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor3:
                if not stor4:
                    require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]
                    require (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 >= stor4
                    require (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                    if not 0 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.myDividends(bool arg1) with:
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        if ext_call.return_data[0] > 1:
                            call tokenContractAddress.0xfdb5a03e with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                    else:
                        require 4 * 0 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / 0 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 == 4
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.myDividends(bool arg1) with:
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        if ext_call.return_data[0] > 1:
                            call tokenContractAddress.0xfdb5a03e with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 4 * 0 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 4 * 0 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / 100 <= 0 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4) - (4 * 0 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / 100)
                else:
                    require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / stor4 == (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]
                    require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) >= 0
                    require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]
                    require ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 >= stor4
                    require ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                    if not 0 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.myDividends(bool arg1) with:
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        if ext_call.return_data[0] > 1:
                            call tokenContractAddress.0xfdb5a03e with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                    else:
                        require 4 * 0 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / 0 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 == 4
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.myDividends(bool arg1) with:
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        if ext_call.return_data[0] > 1:
                            call tokenContractAddress.0xfdb5a03e with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 4 * 0 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 4 * 0 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / 100 <= 0 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4) - (4 * 0 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / 100)
            else:
                require ext_call.return_data[0] * stor3 / stor3 == ext_call.return_data[0]
                if not stor3:
                    if not stor4:
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]
                        require (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 >= stor4
                        require (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                        if not ext_call.return_data[0] * stor3 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor3 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor3 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                        else:
                            require 4 * ext_call.return_data[0] * stor3 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / ext_call.return_data[0] * stor3 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 == 4
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 4 * ext_call.return_data[0] * stor3 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 4 * ext_call.return_data[0] * stor3 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / 100 <= ext_call.return_data[0] * stor3 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor3 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4) - (4 * ext_call.return_data[0] * stor3 / (0 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / 100)
                    else:
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / stor4 == (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) >= 0
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]
                        require ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 >= stor4
                        require ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                        if not ext_call.return_data[0] * stor3 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor3 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor3 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                        else:
                            require 4 * ext_call.return_data[0] * stor3 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / ext_call.return_data[0] * stor3 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 == 4
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 4 * ext_call.return_data[0] * stor3 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 4 * ext_call.return_data[0] * stor3 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / 100 <= ext_call.return_data[0] * stor3 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor3 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4) - (4 * ext_call.return_data[0] * stor3 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / 100)
                else:
                    require marketEggs * stor3 / stor3 == marketEggs
                    if not stor4:
                        require marketEggs * stor3 >= marketEggs * stor3
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]
                        require (marketEggs * stor3 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 >= stor4
                        require (marketEggs * stor3 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                        if not ext_call.return_data[0] * stor3 / (marketEggs * stor3 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor3 / (marketEggs * stor3 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor3 / (marketEggs * stor3 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                        else:
                            require 4 * ext_call.return_data[0] * stor3 / (marketEggs * stor3 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / ext_call.return_data[0] * stor3 / (marketEggs * stor3 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 == 4
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 4 * ext_call.return_data[0] * stor3 / (marketEggs * stor3 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 4 * ext_call.return_data[0] * stor3 / (marketEggs * stor3 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / 100 <= ext_call.return_data[0] * stor3 / (marketEggs * stor3 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor3 / (marketEggs * stor3 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4) - (4 * ext_call.return_data[0] * stor3 / (marketEggs * stor3 / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / 100)
                    else:
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) / stor4 == (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) >= marketEggs * stor3
                        require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]
                        require ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 >= stor4
                        require ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                        if not ext_call.return_data[0] * stor3 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor3 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor3 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                        else:
                            require 4 * ext_call.return_data[0] * stor3 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / ext_call.return_data[0] * stor3 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 == 4
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 4 * ext_call.return_data[0] * stor3 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 4 * ext_call.return_data[0] * stor3 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / 100 <= ext_call.return_data[0] * stor3 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor3 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4) - (4 * ext_call.return_data[0] * stor3 / ((hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (hatcheryShrimp[address(msg.sender)] * EGGS_TO_HATCH_1SHRIMP) + claimedEggs[msg.sender]) + stor4 / 100)
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.myTokens() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor3:
                if not stor4:
                    require claimedEggs[msg.sender]
                    require (0 / claimedEggs[msg.sender]) + stor4 >= stor4
                    require (0 / claimedEggs[msg.sender]) + stor4
                    if not 0 / (0 / claimedEggs[msg.sender]) + stor4:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.myDividends(bool arg1) with:
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        if ext_call.return_data[0] > 1:
                            call tokenContractAddress.0xfdb5a03e with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / (0 / claimedEggs[msg.sender]) + stor4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / (0 / claimedEggs[msg.sender]) + stor4
                    else:
                        require 4 * 0 / (0 / claimedEggs[msg.sender]) + stor4 / 0 / (0 / claimedEggs[msg.sender]) + stor4 == 4
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.myDividends(bool arg1) with:
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        if ext_call.return_data[0] > 1:
                            call tokenContractAddress.0xfdb5a03e with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 4 * 0 / (0 / claimedEggs[msg.sender]) + stor4 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 4 * 0 / (0 / claimedEggs[msg.sender]) + stor4 / 100 <= 0 / (0 / claimedEggs[msg.sender]) + stor4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (0 / claimedEggs[msg.sender]) + stor4) - (4 * 0 / (0 / claimedEggs[msg.sender]) + stor4 / 100)
                else:
                    require claimedEggs[msg.sender] * stor4 / stor4 == claimedEggs[msg.sender]
                    require claimedEggs[msg.sender] * stor4 >= 0
                    require claimedEggs[msg.sender]
                    require (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 >= stor4
                    require (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4
                    if not 0 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.myDividends(bool arg1) with:
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        if ext_call.return_data[0] > 1:
                            call tokenContractAddress.0xfdb5a03e with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4
                    else:
                        require 4 * 0 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 / 0 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 == 4
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.myDividends(bool arg1) with:
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        if ext_call.return_data[0] > 1:
                            call tokenContractAddress.0xfdb5a03e with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 4 * 0 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 4 * 0 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 / 100 <= 0 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4) - (4 * 0 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 / 100)
            else:
                require ext_call.return_data[0] * stor3 / stor3 == ext_call.return_data[0]
                if not stor3:
                    if not stor4:
                        require claimedEggs[msg.sender]
                        require (0 / claimedEggs[msg.sender]) + stor4 >= stor4
                        require (0 / claimedEggs[msg.sender]) + stor4
                        if not ext_call.return_data[0] * stor3 / (0 / claimedEggs[msg.sender]) + stor4:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor3 / (0 / claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor3 / (0 / claimedEggs[msg.sender]) + stor4
                        else:
                            require 4 * ext_call.return_data[0] * stor3 / (0 / claimedEggs[msg.sender]) + stor4 / ext_call.return_data[0] * stor3 / (0 / claimedEggs[msg.sender]) + stor4 == 4
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 4 * ext_call.return_data[0] * stor3 / (0 / claimedEggs[msg.sender]) + stor4 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 4 * ext_call.return_data[0] * stor3 / (0 / claimedEggs[msg.sender]) + stor4 / 100 <= ext_call.return_data[0] * stor3 / (0 / claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor3 / (0 / claimedEggs[msg.sender]) + stor4) - (4 * ext_call.return_data[0] * stor3 / (0 / claimedEggs[msg.sender]) + stor4 / 100)
                    else:
                        require claimedEggs[msg.sender] * stor4 / stor4 == claimedEggs[msg.sender]
                        require claimedEggs[msg.sender] * stor4 >= 0
                        require claimedEggs[msg.sender]
                        require (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 >= stor4
                        require (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4
                        if not ext_call.return_data[0] * stor3 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor3 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor3 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4
                        else:
                            require 4 * ext_call.return_data[0] * stor3 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 / ext_call.return_data[0] * stor3 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 == 4
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 4 * ext_call.return_data[0] * stor3 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 4 * ext_call.return_data[0] * stor3 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 / 100 <= ext_call.return_data[0] * stor3 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor3 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4) - (4 * ext_call.return_data[0] * stor3 / (claimedEggs[msg.sender] * stor4 / claimedEggs[msg.sender]) + stor4 / 100)
                else:
                    require marketEggs * stor3 / stor3 == marketEggs
                    if not stor4:
                        require marketEggs * stor3 >= marketEggs * stor3
                        require claimedEggs[msg.sender]
                        require (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4 >= stor4
                        require (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4
                        if not ext_call.return_data[0] * stor3 / (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor3 / (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor3 / (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4
                        else:
                            require 4 * ext_call.return_data[0] * stor3 / (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4 / ext_call.return_data[0] * stor3 / (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4 == 4
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 4 * ext_call.return_data[0] * stor3 / (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 4 * ext_call.return_data[0] * stor3 / (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4 / 100 <= ext_call.return_data[0] * stor3 / (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor3 / (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4) - (4 * ext_call.return_data[0] * stor3 / (marketEggs * stor3 / claimedEggs[msg.sender]) + stor4 / 100)
                    else:
                        require claimedEggs[msg.sender] * stor4 / stor4 == claimedEggs[msg.sender]
                        require (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) >= marketEggs * stor3
                        require claimedEggs[msg.sender]
                        require ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4 >= stor4
                        require ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4
                        if not ext_call.return_data[0] * stor3 / ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor3 / ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor3 / ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4
                        else:
                            require 4 * ext_call.return_data[0] * stor3 / ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4 / ext_call.return_data[0] * stor3 / ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4 == 4
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 4 * ext_call.return_data[0] * stor3 / ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 4 * ext_call.return_data[0] * stor3 / ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4 / 100 <= ext_call.return_data[0] * stor3 / ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor3 / ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4) - (4 * ext_call.return_data[0] * stor3 / ((claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / claimedEggs[msg.sender]) + stor4 / 100)
        else:
            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.myTokens() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor3:
                if not stor4:
                    require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]
                    require (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 >= stor4
                    require (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                    if not 0 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.myDividends(bool arg1) with:
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        if ext_call.return_data[0] > 1:
                            call tokenContractAddress.0xfdb5a03e with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                    else:
                        require 4 * 0 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / 0 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 == 4
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.myDividends(bool arg1) with:
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        if ext_call.return_data[0] > 1:
                            call tokenContractAddress.0xfdb5a03e with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 4 * 0 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 4 * 0 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / 100 <= 0 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4) - (4 * 0 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / 100)
                else:
                    require (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / stor4 == (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]
                    require (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) >= 0
                    require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]
                    require ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 >= stor4
                    require ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                    if not 0 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.myDividends(bool arg1) with:
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        if ext_call.return_data[0] > 1:
                            call tokenContractAddress.0xfdb5a03e with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                    else:
                        require 4 * 0 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / 0 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 == 4
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.myDividends(bool arg1) with:
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenContractAddress)
                        if ext_call.return_data[0] > 1:
                            call tokenContractAddress.0xfdb5a03e with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor5.field_0), 4 * 0 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 4 * 0 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / 100 <= 0 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4) - (4 * 0 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / 100)
            else:
                require ext_call.return_data[0] * stor3 / stor3 == ext_call.return_data[0]
                if not stor3:
                    if not stor4:
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]
                        require (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 >= stor4
                        require (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                        if not ext_call.return_data[0] * stor3 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor3 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor3 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                        else:
                            require 4 * ext_call.return_data[0] * stor3 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / ext_call.return_data[0] * stor3 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 == 4
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 4 * ext_call.return_data[0] * stor3 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 4 * ext_call.return_data[0] * stor3 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / 100 <= ext_call.return_data[0] * stor3 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor3 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4) - (4 * ext_call.return_data[0] * stor3 / (0 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / 100)
                    else:
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / stor4 == (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) >= 0
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]
                        require ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 >= stor4
                        require ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                        if not ext_call.return_data[0] * stor3 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor3 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor3 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                        else:
                            require 4 * ext_call.return_data[0] * stor3 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / ext_call.return_data[0] * stor3 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 == 4
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 4 * ext_call.return_data[0] * stor3 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 4 * ext_call.return_data[0] * stor3 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / 100 <= ext_call.return_data[0] * stor3 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor3 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4) - (4 * ext_call.return_data[0] * stor3 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / 100)
                else:
                    require marketEggs * stor3 / stor3 == marketEggs
                    if not stor4:
                        require marketEggs * stor3 >= marketEggs * stor3
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]
                        require (marketEggs * stor3 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 >= stor4
                        require (marketEggs * stor3 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                        if not ext_call.return_data[0] * stor3 / (marketEggs * stor3 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor3 / (marketEggs * stor3 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor3 / (marketEggs * stor3 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                        else:
                            require 4 * ext_call.return_data[0] * stor3 / (marketEggs * stor3 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / ext_call.return_data[0] * stor3 / (marketEggs * stor3 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 == 4
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 4 * ext_call.return_data[0] * stor3 / (marketEggs * stor3 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 4 * ext_call.return_data[0] * stor3 / (marketEggs * stor3 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / 100 <= ext_call.return_data[0] * stor3 / (marketEggs * stor3 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor3 / (marketEggs * stor3 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4) - (4 * ext_call.return_data[0] * stor3 / (marketEggs * stor3 / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / 100)
                    else:
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) / stor4 == (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) >= marketEggs * stor3
                        require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]
                        require ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 >= stor4
                        require ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                        if not ext_call.return_data[0] * stor3 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor3 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor3 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                        else:
                            require 4 * ext_call.return_data[0] * stor3 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / ext_call.return_data[0] * stor3 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 == 4
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.myDividends(bool arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            if ext_call.return_data[0] > 1:
                                call tokenContractAddress.0xfdb5a03e with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor5.field_0), 4 * ext_call.return_data[0] * stor3 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 4 * ext_call.return_data[0] * stor3 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / 100 <= ext_call.return_data[0] * stor3 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor3 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4) - (4 * ext_call.return_data[0] * stor3 / ((block.timestamp * hatcheryShrimp[address(msg.sender)] * stor4) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor4) + (claimedEggs[msg.sender] * stor4) + (marketEggs * stor3) / (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) + claimedEggs[msg.sender]) + stor4 / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
