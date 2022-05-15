contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint256 sub_f1ab1d8a;
uint256 sub_303972c9;
uint256 stor2;
uint256 stor3;
uint8 stor4;
address ceoAddress; offset 8
mapping of uint256 sub_8c8125d5;
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

function sub_303972c9(?) {
    return sub_303972c9
}

function lastHatch(address arg1) {
    return lastHatch[arg1]
}

function claimedEggs(address arg1) {
    return claimedEggs[arg1]
}

function sub_8c8125d5(?) {
    return sub_8c8125d5[arg1]
}

function referrals(address arg1) {
    return referrals[arg1]
}

function sub_aea62e8d(?) {
    return sub_8c8125d5[address(msg.sender)]
}

function sub_f1ab1d8a(?) {
    return sub_f1ab1d8a
}

function _fallback() payable {
    revert
}

function seedMarket(uint256 arg1) payable {
    require not marketEggs
    stor4 = 1
    marketEggs = arg1
}

function devFee(uint256 arg1) {
    if not arg1:
        return 0
    require arg1
    require 4 * arg1 / arg1 == 4
    return (4 * arg1 / 100)
}

function sub_fb5818a2(?) {
    require stor4
    require not sub_8c8125d5[address(msg.sender)]
    lastHatch[address(msg.sender)] = block.timestamp
    sub_8c8125d5[address(msg.sender)] = sub_303972c9
}

function getEggsSinceLastHatch(address arg1) {
    require lastHatch[address(arg1)] <= block.timestamp
    if sub_f1ab1d8a < block.timestamp - lastHatch[address(arg1)]:
        if not sub_f1ab1d8a:
            return 0
        if sub_f1ab1d8a:
            if sub_f1ab1d8a * sub_8c8125d5[address(arg1)] / sub_f1ab1d8a == sub_8c8125d5[address(arg1)]:
                return (sub_f1ab1d8a * sub_8c8125d5[address(arg1)])
    else:
        if not block.timestamp - lastHatch[address(arg1)]:
            return 0
        if block.timestamp - lastHatch[address(arg1)]:
            if (block.timestamp * sub_8c8125d5[address(arg1)]) - (lastHatch[address(arg1)] * sub_8c8125d5[address(arg1)]) / block.timestamp - lastHatch[address(arg1)] == sub_8c8125d5[address(arg1)]:
                return ((block.timestamp * sub_8c8125d5[address(arg1)]) - (lastHatch[address(arg1)] * sub_8c8125d5[address(arg1)]))
    revert
}

function getMyEggs() {
    require lastHatch[address(msg.sender)] <= block.timestamp
    if sub_f1ab1d8a < block.timestamp - lastHatch[address(msg.sender)]:
        if not sub_f1ab1d8a:
            if claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]:
                return claimedEggs[address(msg.sender)]
        else:
            if sub_f1ab1d8a:
                if sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] / sub_f1ab1d8a == sub_8c8125d5[address(msg.sender)]:
                    if claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) >= claimedEggs[address(msg.sender)]:
                        return (claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            if claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]:
                return claimedEggs[address(msg.sender)]
        else:
            if block.timestamp - lastHatch[address(msg.sender)]:
                if (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == sub_8c8125d5[address(msg.sender)]:
                    if claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) >= claimedEggs[address(msg.sender)]:
                        return (claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
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
    require stor4
    if not referrals[address(msg.sender)]:
        if referrals[address(msg.sender)] != msg.sender:
            referrals[address(msg.sender)] = arg1
    require lastHatch[address(msg.sender)] <= block.timestamp
    if sub_f1ab1d8a < block.timestamp - lastHatch[address(msg.sender)]:
        if not sub_f1ab1d8a:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require sub_f1ab1d8a
            require sub_8c8125d5[address(msg.sender)] + (claimedEggs[address(msg.sender)] / sub_f1ab1d8a) >= sub_8c8125d5[address(msg.sender)]
            sub_8c8125d5[address(msg.sender)] += claimedEggs[address(msg.sender)] / sub_f1ab1d8a
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor8[address(msg.sender)]] + (claimedEggs[address(msg.sender)] / 5) >= claimedEggs[stor8[address(msg.sender)]]
            claimedEggs[stor8[address(msg.sender)]] += claimedEggs[address(msg.sender)] / 5
            require marketEggs + (claimedEggs[address(msg.sender)] / 10) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] / 10
        else:
            require sub_f1ab1d8a
            require sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] / sub_f1ab1d8a == sub_8c8125d5[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            require sub_f1ab1d8a
            require sub_8c8125d5[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) / sub_f1ab1d8a) >= sub_8c8125d5[address(msg.sender)]
            sub_8c8125d5[address(msg.sender)] += claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) / sub_f1ab1d8a
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor8[address(msg.sender)]] + (claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) / 5) >= claimedEggs[stor8[address(msg.sender)]]
            claimedEggs[stor8[address(msg.sender)]] += claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) / 5
            require marketEggs + (claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) / 10) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) / 10
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require sub_f1ab1d8a
            require sub_8c8125d5[address(msg.sender)] + (claimedEggs[address(msg.sender)] / sub_f1ab1d8a) >= sub_8c8125d5[address(msg.sender)]
            sub_8c8125d5[address(msg.sender)] += claimedEggs[address(msg.sender)] / sub_f1ab1d8a
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor8[address(msg.sender)]] + (claimedEggs[address(msg.sender)] / 5) >= claimedEggs[stor8[address(msg.sender)]]
            claimedEggs[stor8[address(msg.sender)]] += claimedEggs[address(msg.sender)] / 5
            require marketEggs + (claimedEggs[address(msg.sender)] / 10) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] / 10
        else:
            require block.timestamp - lastHatch[address(msg.sender)]
            require (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == sub_8c8125d5[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            require sub_f1ab1d8a
            require sub_8c8125d5[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) / sub_f1ab1d8a) >= sub_8c8125d5[address(msg.sender)]
            sub_8c8125d5[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) / sub_f1ab1d8a
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor8[address(msg.sender)]] + (claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) / 5) >= claimedEggs[stor8[address(msg.sender)]]
            claimedEggs[stor8[address(msg.sender)]] += claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) / 5
            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) / 10) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) / 10
}

function buyEggs() payable {
    require stor4
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
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value)) - (4 * stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value)) - (4 * stor2 * marketEggs / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) / 100)
}

function sellEggs() {
    require stor4
    require lastHatch[address(msg.sender)] <= block.timestamp
    if sub_f1ab1d8a < block.timestamp - lastHatch[address(msg.sender)]:
        if not sub_f1ab1d8a:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            if not stor2:
                if not stor3:
                    require claimedEggs[address(msg.sender)]
                    require stor3 + (0 / claimedEggs[address(msg.sender)]) >= stor3
                    require stor3 + (0 / claimedEggs[address(msg.sender)])
                    if not 0 / stor3 + (0 / claimedEggs[address(msg.sender)]):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor3 + (0 / claimedEggs[address(msg.sender)])
                        require 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) == 4
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                           value 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        require 4 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) == 4
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                           value 4 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)])
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]) / stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]) == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 <= stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])) - (4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
        else:
            require sub_f1ab1d8a
            require sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] / sub_f1ab1d8a == sub_8c8125d5[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            if not stor2:
                if not stor3:
                    require claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                    require stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) >= stor3
                    require stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                    if not 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                        call msg.sender with:
                           value 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                        require 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) == 4
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                        call ceoAddress with:
                           value 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / 100 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                        call msg.sender with:
                           value (0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))) - (4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require stor3
                    require (claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / stor3 == claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                    require (claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) >= 0
                    require claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                    require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) >= stor3
                    require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                    if not 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                        call msg.sender with:
                           value 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                        require 4 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) == 4
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                        call ceoAddress with:
                           value 4 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 4 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / 100 <= 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                        call msg.sender with:
                           value (0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))) - (4 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require stor2
                require stor2 * eth.balance(this.address) / stor2 == eth.balance(this.address)
                if not stor2:
                    if not stor3:
                        require claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                        require stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) >= stor3
                        require stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                        if not stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / 100 <= stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))) - (4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor3
                        require (claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / stor3 == claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                        require (claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) >= 0
                        require claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                        require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) >= stor3
                        require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                        if not stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / 100 <= stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))) - (4 * stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require stor2
                    require stor2 * marketEggs / stor2 == marketEggs
                    if not stor3:
                        require stor2 * marketEggs >= stor2 * marketEggs
                        require claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                        require stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) >= stor3
                        require stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                        if not stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / 100 <= stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))) - (4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor3
                        require (claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / stor3 == claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                        require (stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) >= stor2 * marketEggs
                        require claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                        require stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) >= stor3
                        require stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                        if not stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / 100 <= stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)]))) - (4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (sub_f1ab1d8a * sub_8c8125d5[address(msg.sender)])) / 100) wei
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
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor3 + (0 / claimedEggs[address(msg.sender)])
                        require 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) == 4
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                           value 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        require 4 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) == 4
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                           value 4 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)])
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]) / stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]) == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 <= stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])) - (4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
        else:
            require block.timestamp - lastHatch[address(msg.sender)]
            require (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == sub_8c8125d5[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            if not stor2:
                if not stor3:
                    require claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                    require stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) >= stor3
                    require stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                    if not 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                        call msg.sender with:
                           value 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                        require 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) == 4
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                        call ceoAddress with:
                           value 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / 100 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                        call msg.sender with:
                           value (0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))) - (4 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require stor3
                    require (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / stor3 == claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                    require (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) >= 0
                    require claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                    require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) >= stor3
                    require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                    if not 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                        call msg.sender with:
                           value 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                        require 4 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) == 4
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                        call ceoAddress with:
                           value 4 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 4 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / 100 <= 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                        call msg.sender with:
                           value (0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))) - (4 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require stor2
                require stor2 * eth.balance(this.address) / stor2 == eth.balance(this.address)
                if not stor2:
                    if not stor3:
                        require claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                        require stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) >= stor3
                        require stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                        if not stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / 100 <= stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))) - (4 * stor2 * eth.balance(this.address) / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor3
                        require (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / stor3 == claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                        require (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) >= 0
                        require claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                        require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) >= stor3
                        require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                        if not stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / 100 <= stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))) - (4 * stor2 * eth.balance(this.address) / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require stor2
                    require stor2 * marketEggs / stor2 == marketEggs
                    if not stor3:
                        require stor2 * marketEggs >= stor2 * marketEggs
                        require claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                        require stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) >= stor3
                        require stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                        if not stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / 100 <= stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))) - (4 * stor2 * eth.balance(this.address) / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor3
                        require (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / stor3 == claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                        require (stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) >= stor2 * marketEggs
                        require claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                        require stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) >= stor3
                        require stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                        if not stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                            call msg.sender with:
                               value stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) == 4
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])
                            call ceoAddress with:
                               value 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / 100 <= stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))
                            call msg.sender with:
                               value (stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)]))) - (4 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * sub_8c8125d5[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * sub_8c8125d5[address(msg.sender)]) - (lastHatch[address(msg.sender)] * sub_8c8125d5[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
