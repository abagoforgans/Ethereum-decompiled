contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor11;
uint256 stor12;
address stor13;
address stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 14
    stor4.length.field_8 = 'UST Put Option' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 4
    stor5.length.field_8 = 'PUST' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor11 = 429520 * 3600
    stor12 = 100000
    stor13 = 0xfa55951f84bfbe2e6f95aa74b58cc7047f9f0644
    stor14 = 0x472fc5b96afdbd1ebc5ae22ea10bafe45225bdc6
    stor15 = 40
    stor16 = 10
    stor17 = 5 * 10^17
    stor18 = block.number + 40
    stor19 = 3998 * 10^14
    stor20 = 99993 * 10^12
    stor21 = 5 * 10^17
    stor22 = 0
    stor23 = 0
    stor0 = msg.sender
    return code.data[529 len 4662]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
uint256 topTotalSupply;
mapping of uint256 balances;
mapping of uint256 allowance;
uint256 exerciseEndTime;
uint256 exchangeRate;
address ustAddress;
address officialAddress;
uint256 initBlockEpoch;
uint256 eachUserWeight;
uint256 initEachPUST;
uint256 lastEpochBlock;
uint256 price1;
uint256 price2;
uint256 eachPUSTprice;
uint256 lastEpochTX;
uint256 epochLast;
address lastCallAddress;
uint256 lastCallPUST;

function ustAddress() {
    return ustAddress
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function initEachPUST() {
    return initEachPUST
}

function price2() {
    return price2
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function initBlockEpoch() {
    return initBlockEpoch
}

function exchangeRate() {
    return exchangeRate
}

function lastCallAddress() {
    return lastCallAddress
}

function ExerciseEndTime() {
    return exerciseEndTime
}

function price1() {
    return price1
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function lastCallPUST() {
    return lastCallPUST
}

function topTotalSupply() {
    return topTotalSupply
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function eachPUSTprice() {
    return eachPUSTprice
}

function lastEpochBlock() {
    return lastEpochBlock
}

function epochLast() {
    return epochLast
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function lastEpochTX() {
    return lastEpochTX
}

function eachUserWeight() {
    return eachUserWeight
}

function officialAddress() {
    return officialAddress
}

function DepositETH() payable {
    require officialAddress == msg.sender
    topTotalSupply += msg.value / 10^18
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require owner != arg1
    stor1 = arg1
    return 1
}

function acceptNewOwner() {
    require stor1 == msg.sender
    emit updateOwner(owner, stor1);
    owner = stor1
    return 1
}

function chgExchangeRate(uint256 arg1) {
    require owner == msg.sender
    require arg1 != exchangeRate
    require arg1
    exchangeRate = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function WithdrawETH() payable {
    require owner == msg.sender
    require block.timestamp >= exerciseEndTime
    call officialAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] < arg2:
        return 0
    if balances[address(arg1)] + arg2 < balances[address(arg1)]:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balances[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balances[address(arg2)] + arg3 < balances[address(arg2)]:
        return 0
    balances[address(arg2)] += arg3
    balances[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function calcpustprice(uint256 arg1, uint256 arg2) {
    require arg1 - arg2 > 0
    idx = 0
    while idx < arg1 - arg2 / 100:
        price1 -= 5 * price1 / 100
        price2 -= 7 * price2 / 1000
        idx = idx + 1
        continue 
    price1 -= (5 * arg1 * price1) - (5 * arg2 * price1) - (500 * arg1 - arg2 / 100 * price1) / 10000
    price2 -= (7 * arg1 * price2) - (7 * arg2 * price2) - (700 * arg1 - arg2 / 100 * price2) / 100000
    return (price1 + price2)
}

function exerciseOption(uint256 arg1) {
    require block.timestamp < exerciseEndTime
    require arg1 <= balances[address(msg.sender)]
    require eth.balance(this.address) >= 10^18 * arg1
    require ext_code.size(ustAddress)
    call ustAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, officialAddress, 10^18 * arg1 * exchangeRate
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    call msg.sender with:
       value 10^18 * arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit exchange(address(this.address), msg.sender, arg1);
    return 0
}

function allocLastTxRewardByHand() {
    require owner == msg.sender
    require initBlockEpoch + block.number >= block.number
    require initBlockEpoch + block.number >= initBlockEpoch
    lastEpochBlock = initBlockEpoch + block.number
    if lastEpochTX != 1:
        if not lastCallPUST:
            require totalSupply >= totalSupply
            require totalSupply >= 0
            require totalSupply <= topTotalSupply
            require balances[stor24] >= balances[stor24]
            require balances[stor24] >= 0
            require totalSupply >= totalSupply
            require totalSupply >= 0
            return 1
        require (2 * lastCallPUST - 1 / 10) + totalSupply + 1 >= totalSupply
        require totalSupply >= 0
        if (2 * lastCallPUST - 1 / 10) + totalSupply + 1 <= topTotalSupply:
            require (2 * lastCallPUST - 1 / 10) + balances[stor24] + 1 >= balances[stor24]
            require balances[stor24] >= 0
            balances[stor24] = (2 * lastCallPUST - 1 / 10) + balances[stor24] + 1
            require (2 * lastCallPUST - 1 / 10) + totalSupply + 1 >= totalSupply
            require totalSupply >= 0
            totalSupply = (2 * lastCallPUST - 1 / 10) + totalSupply + 1
        else:
            require totalSupply <= topTotalSupply
            require topTotalSupply - totalSupply + balances[stor24] >= balances[stor24]
            require balances[stor24] >= 0
            balances[stor24] = topTotalSupply - totalSupply + balances[stor24]
            require topTotalSupply >= totalSupply
            require topTotalSupply >= topTotalSupply - totalSupply
            totalSupply = topTotalSupply
    return 1
}

function _fallback() payable {
    require block.timestamp < exerciseEndTime
    require topTotalSupply > totalSupply
    if lastEpochBlock < block.number:
        require initBlockEpoch
        if epochLast + (block.number - lastEpochBlock / initBlockEpoch) + 1 == epochLast:
            require eachPUSTprice
            require msg.value / eachPUSTprice > 0
            require (msg.value / eachPUSTprice) + totalSupply >= totalSupply
            require (msg.value / eachPUSTprice) + totalSupply >= msg.value / eachPUSTprice
            if (msg.value / eachPUSTprice) + totalSupply <= topTotalSupply:
                if msg.value - (msg.value / eachPUSTprice * eachPUSTprice) <= 0:
                    require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                    require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= msg.value / eachPUSTprice
                    balances[address(msg.sender)] += msg.value / eachPUSTprice
                    require (msg.value / eachPUSTprice) + totalSupply >= totalSupply
                    require (msg.value / eachPUSTprice) + totalSupply >= msg.value / eachPUSTprice
                    totalSupply += msg.value / eachPUSTprice
                    emit buyPUST(msg.sender, msg.value / eachPUSTprice);
                    if lastCallAddress:
                        lastEpochTX++
                        lastCallAddress = msg.sender
                        lastCallPUST = msg.value / eachPUSTprice
                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                        lastEpochBlock += eachUserWeight
                    else:
                        if epochLast:
                            lastEpochTX++
                            lastCallAddress = msg.sender
                            lastCallPUST = msg.value / eachPUSTprice
                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                            lastEpochBlock += eachUserWeight
                        else:
                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                            require totalSupply >= 0
                            if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = msg.value / eachPUSTprice
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
                            else:
                                require totalSupply <= topTotalSupply
                                require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                require topTotalSupply >= totalSupply
                                require topTotalSupply >= topTotalSupply - totalSupply
                                totalSupply = topTotalSupply
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = msg.value / eachPUSTprice
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
                else:
                    call msg.sender with:
                       value msg.value - (msg.value / eachPUSTprice * eachPUSTprice) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                    require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= msg.value / eachPUSTprice
                    balances[address(msg.sender)] += msg.value / eachPUSTprice
                    require (msg.value / eachPUSTprice) + totalSupply >= totalSupply
                    require (msg.value / eachPUSTprice) + totalSupply >= msg.value / eachPUSTprice
                    totalSupply += msg.value / eachPUSTprice
                    emit buyPUST(msg.sender, msg.value / eachPUSTprice);
                    if lastCallAddress:
                        lastEpochTX++
                        lastCallAddress = msg.sender
                        lastCallPUST = msg.value / eachPUSTprice
                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                        lastEpochBlock += eachUserWeight
                    else:
                        if epochLast:
                            lastEpochTX++
                            lastCallAddress = msg.sender
                            lastCallPUST = msg.value / eachPUSTprice
                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                            lastEpochBlock += eachUserWeight
                        else:
                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                            require totalSupply >= 0
                            if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = msg.value / eachPUSTprice
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
                            else:
                                require totalSupply <= topTotalSupply
                                require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                require topTotalSupply >= totalSupply
                                require topTotalSupply >= topTotalSupply - totalSupply
                                totalSupply = topTotalSupply
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = msg.value / eachPUSTprice
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
            else:
                require totalSupply <= topTotalSupply
                if msg.value - (topTotalSupply * eachPUSTprice) + (totalSupply * eachPUSTprice) <= 0:
                    require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                    require balances[address(msg.sender)] >= 0
                    balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                    require topTotalSupply >= totalSupply
                    require topTotalSupply >= topTotalSupply - totalSupply
                    totalSupply = topTotalSupply
                    emit buyPUST(msg.sender, topTotalSupply - totalSupply);
                    if lastCallAddress:
                        lastEpochTX++
                        lastCallAddress = msg.sender
                        lastCallPUST = topTotalSupply - totalSupply
                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                        lastEpochBlock += eachUserWeight
                    else:
                        if epochLast:
                            lastEpochTX++
                            lastCallAddress = msg.sender
                            lastCallPUST = topTotalSupply - totalSupply
                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                            lastEpochBlock += eachUserWeight
                        else:
                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                            require totalSupply >= 0
                            if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = topTotalSupply - totalSupply
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
                            else:
                                require totalSupply <= topTotalSupply
                                require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                require topTotalSupply >= totalSupply
                                require topTotalSupply >= topTotalSupply - totalSupply
                                totalSupply = topTotalSupply
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = topTotalSupply - totalSupply
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
                else:
                    call msg.sender with:
                       value msg.value - (topTotalSupply * eachPUSTprice) + (totalSupply * eachPUSTprice) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                    require balances[address(msg.sender)] >= 0
                    balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                    require topTotalSupply >= totalSupply
                    require topTotalSupply >= topTotalSupply - totalSupply
                    totalSupply = topTotalSupply
                    emit buyPUST(msg.sender, topTotalSupply - totalSupply);
                    if lastCallAddress:
                        lastEpochTX++
                        lastCallAddress = msg.sender
                        lastCallPUST = topTotalSupply - totalSupply
                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                        lastEpochBlock += eachUserWeight
                    else:
                        if epochLast:
                            lastEpochTX++
                            lastCallAddress = msg.sender
                            lastCallPUST = topTotalSupply - totalSupply
                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                            lastEpochBlock += eachUserWeight
                        else:
                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                            require totalSupply >= 0
                            if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = topTotalSupply - totalSupply
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
                            else:
                                require totalSupply <= topTotalSupply
                                require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                require topTotalSupply >= totalSupply
                                require topTotalSupply >= topTotalSupply - totalSupply
                                totalSupply = topTotalSupply
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = topTotalSupply - totalSupply
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
        else:
            require initBlockEpoch
            require initBlockEpoch + (block.number - lastEpochBlock / initBlockEpoch * initBlockEpoch) + lastEpochBlock >= lastEpochBlock
            require lastEpochBlock >= 0
            lastEpochBlock = initBlockEpoch + (block.number - lastEpochBlock / initBlockEpoch * initBlockEpoch) + lastEpochBlock
            if lastEpochTX != 1:
                if not lastCallPUST:
                    require totalSupply >= totalSupply
                    require totalSupply >= 0
                    require totalSupply <= topTotalSupply
                    require balances[stor24] >= balances[stor24]
                    require balances[stor24] >= 0
                    require totalSupply >= totalSupply
                    require totalSupply >= 0
                    require (block.number - lastEpochBlock / initBlockEpoch) + 1 > 0
                    idx = 0
                    while idx < (block.number - lastEpochBlock / initBlockEpoch) + 1 / 100:
                        price1 -= 5 * price1 / 100
                        price2 -= 7 * price2 / 1000
                        idx = idx + 1
                        continue 
                    price1 -= (5 * price1) + (5 * block.number - lastEpochBlock / initBlockEpoch * price1) - (500 * (block.number - lastEpochBlock / initBlockEpoch) + 1 / 100 * price1) / 10000
                    price2 -= (7 * price2) + (7 * block.number - lastEpochBlock / initBlockEpoch * price2) - (700 * (block.number - lastEpochBlock / initBlockEpoch) + 1 / 100 * price2) / 100000
                    eachPUSTprice = price1 + price2
                    epochLast = epochLast + (block.number - lastEpochBlock / initBlockEpoch) + 1
                    lastEpochTX = 0
                    require eachPUSTprice
                    require msg.value / eachPUSTprice > 0
                    require (msg.value / eachPUSTprice) + totalSupply >= totalSupply
                    require (msg.value / eachPUSTprice) + totalSupply >= msg.value / eachPUSTprice
                    if (msg.value / eachPUSTprice) + totalSupply <= topTotalSupply:
                        if msg.value - (msg.value / eachPUSTprice * eachPUSTprice) <= 0:
                            require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                            require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= msg.value / eachPUSTprice
                            balances[address(msg.sender)] += msg.value / eachPUSTprice
                            require (msg.value / eachPUSTprice) + totalSupply >= totalSupply
                            require (msg.value / eachPUSTprice) + totalSupply >= msg.value / eachPUSTprice
                            totalSupply += msg.value / eachPUSTprice
                            emit buyPUST(msg.sender, msg.value / eachPUSTprice);
                            if lastCallAddress:
                                require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                    require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                    require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = msg.value / eachPUSTprice
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                                else:
                                    require totalSupply <= topTotalSupply
                                    require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                    require topTotalSupply >= totalSupply
                                    require topTotalSupply >= topTotalSupply - totalSupply
                                    totalSupply = topTotalSupply
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = msg.value / eachPUSTprice
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                            else:
                                if epochLast:
                                    require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = msg.value / eachPUSTprice
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                    else:
                                        require totalSupply <= topTotalSupply
                                        require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                        require topTotalSupply >= totalSupply
                                        require topTotalSupply >= topTotalSupply - totalSupply
                                        totalSupply = topTotalSupply
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = msg.value / eachPUSTprice
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                else:
                                    require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = msg.value / eachPUSTprice
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                    else:
                                        require totalSupply <= topTotalSupply
                                        require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                        require topTotalSupply >= totalSupply
                                        require topTotalSupply >= topTotalSupply - totalSupply
                                        totalSupply = topTotalSupply
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = msg.value / eachPUSTprice
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                        else:
                            call msg.sender with:
                               value msg.value - (msg.value / eachPUSTprice * eachPUSTprice) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                            require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= msg.value / eachPUSTprice
                            balances[address(msg.sender)] += msg.value / eachPUSTprice
                            require (msg.value / eachPUSTprice) + totalSupply >= totalSupply
                            require (msg.value / eachPUSTprice) + totalSupply >= msg.value / eachPUSTprice
                            totalSupply += msg.value / eachPUSTprice
                            emit buyPUST(msg.sender, msg.value / eachPUSTprice);
                            if lastCallAddress:
                                require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                    require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                    require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = msg.value / eachPUSTprice
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                                else:
                                    require totalSupply <= topTotalSupply
                                    require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                    require topTotalSupply >= totalSupply
                                    require topTotalSupply >= topTotalSupply - totalSupply
                                    totalSupply = topTotalSupply
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = msg.value / eachPUSTprice
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                            else:
                                if epochLast:
                                    require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = msg.value / eachPUSTprice
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                    else:
                                        require totalSupply <= topTotalSupply
                                        require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                        require topTotalSupply >= totalSupply
                                        require topTotalSupply >= topTotalSupply - totalSupply
                                        totalSupply = topTotalSupply
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = msg.value / eachPUSTprice
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                else:
                                    require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = msg.value / eachPUSTprice
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                    else:
                                        require totalSupply <= topTotalSupply
                                        require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                        require topTotalSupply >= totalSupply
                                        require topTotalSupply >= topTotalSupply - totalSupply
                                        totalSupply = topTotalSupply
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = msg.value / eachPUSTprice
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                    else:
                        require totalSupply <= topTotalSupply
                        if msg.value - (topTotalSupply * eachPUSTprice) + (totalSupply * eachPUSTprice) <= 0:
                            require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                            require balances[address(msg.sender)] >= 0
                            balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                            require topTotalSupply >= totalSupply
                            require topTotalSupply >= topTotalSupply - totalSupply
                            totalSupply = topTotalSupply
                            emit buyPUST(msg.sender, topTotalSupply - totalSupply);
                            if lastCallAddress:
                                require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                    require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                    require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = topTotalSupply - totalSupply
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                                else:
                                    require totalSupply <= topTotalSupply
                                    require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                    require topTotalSupply >= totalSupply
                                    require topTotalSupply >= topTotalSupply - totalSupply
                                    totalSupply = topTotalSupply
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = topTotalSupply - totalSupply
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                            else:
                                if epochLast:
                                    require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = topTotalSupply - totalSupply
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                    else:
                                        require totalSupply <= topTotalSupply
                                        require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                        require topTotalSupply >= totalSupply
                                        require topTotalSupply >= topTotalSupply - totalSupply
                                        totalSupply = topTotalSupply
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = topTotalSupply - totalSupply
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                else:
                                    require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = topTotalSupply - totalSupply
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                    else:
                                        require totalSupply <= topTotalSupply
                                        require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                        require topTotalSupply >= totalSupply
                                        require topTotalSupply >= topTotalSupply - totalSupply
                                        totalSupply = topTotalSupply
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = topTotalSupply - totalSupply
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                        else:
                            call msg.sender with:
                               value msg.value - (topTotalSupply * eachPUSTprice) + (totalSupply * eachPUSTprice) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                            require balances[address(msg.sender)] >= 0
                            balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                            require topTotalSupply >= totalSupply
                            require topTotalSupply >= topTotalSupply - totalSupply
                            totalSupply = topTotalSupply
                            emit buyPUST(msg.sender, topTotalSupply - totalSupply);
                            if lastCallAddress:
                                require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                    require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                    require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = topTotalSupply - totalSupply
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                                else:
                                    require totalSupply <= topTotalSupply
                                    require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                    require topTotalSupply >= totalSupply
                                    require topTotalSupply >= topTotalSupply - totalSupply
                                    totalSupply = topTotalSupply
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = topTotalSupply - totalSupply
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                            else:
                                if epochLast:
                                    require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = topTotalSupply - totalSupply
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                    else:
                                        require totalSupply <= topTotalSupply
                                        require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                        require topTotalSupply >= totalSupply
                                        require topTotalSupply >= topTotalSupply - totalSupply
                                        totalSupply = topTotalSupply
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = topTotalSupply - totalSupply
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                else:
                                    require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = topTotalSupply - totalSupply
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                    else:
                                        require totalSupply <= topTotalSupply
                                        require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                        require topTotalSupply >= totalSupply
                                        require topTotalSupply >= topTotalSupply - totalSupply
                                        totalSupply = topTotalSupply
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = topTotalSupply - totalSupply
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                else:
                    require (2 * lastCallPUST - 1 / 10) + totalSupply + 1 >= totalSupply
                    require totalSupply >= 0
                    if (2 * lastCallPUST - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                        require (2 * lastCallPUST - 1 / 10) + balances[stor24] + 1 >= balances[stor24]
                        require balances[stor24] >= 0
                        balances[stor24] = (2 * lastCallPUST - 1 / 10) + balances[stor24] + 1
                        require (2 * lastCallPUST - 1 / 10) + totalSupply + 1 >= totalSupply
                        require totalSupply >= 0
                        totalSupply = (2 * lastCallPUST - 1 / 10) + totalSupply + 1
                        require (block.number - lastEpochBlock / initBlockEpoch) + 1 > 0
                        idx = 0
                        while idx < (block.number - lastEpochBlock / initBlockEpoch) + 1 / 100:
                            price1 -= 5 * price1 / 100
                            price2 -= 7 * price2 / 1000
                            idx = idx + 1
                            continue 
                        price1 -= (5 * price1) + (5 * block.number - lastEpochBlock / initBlockEpoch * price1) - (500 * (block.number - lastEpochBlock / initBlockEpoch) + 1 / 100 * price1) / 10000
                        price2 -= (7 * price2) + (7 * block.number - lastEpochBlock / initBlockEpoch * price2) - (700 * (block.number - lastEpochBlock / initBlockEpoch) + 1 / 100 * price2) / 100000
                        eachPUSTprice = price1 + price2
                        epochLast = epochLast + (block.number - lastEpochBlock / initBlockEpoch) + 1
                        lastEpochTX = 0
                        require eachPUSTprice
                        require msg.value / eachPUSTprice > 0
                        require (msg.value / eachPUSTprice) + totalSupply >= totalSupply
                        require (msg.value / eachPUSTprice) + totalSupply >= msg.value / eachPUSTprice
                        if (msg.value / eachPUSTprice) + totalSupply <= topTotalSupply:
                            if msg.value - (msg.value / eachPUSTprice * eachPUSTprice) <= 0:
                                require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= msg.value / eachPUSTprice
                                balances[address(msg.sender)] += msg.value / eachPUSTprice
                                require (msg.value / eachPUSTprice) + totalSupply >= totalSupply
                                require (msg.value / eachPUSTprice) + totalSupply >= msg.value / eachPUSTprice
                                totalSupply += msg.value / eachPUSTprice
                                emit buyPUST(msg.sender, msg.value / eachPUSTprice);
                                if lastCallAddress:
                                    require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = msg.value / eachPUSTprice
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                    else:
                                        require totalSupply <= topTotalSupply
                                        require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                        require topTotalSupply >= totalSupply
                                        require topTotalSupply >= topTotalSupply - totalSupply
                                        totalSupply = topTotalSupply
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = msg.value / eachPUSTprice
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                else:
                                    if epochLast:
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                            require totalSupply >= 0
                                            totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = msg.value / eachPUSTprice
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                        else:
                                            require totalSupply <= topTotalSupply
                                            require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                            require topTotalSupply >= totalSupply
                                            require topTotalSupply >= topTotalSupply - totalSupply
                                            totalSupply = topTotalSupply
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = msg.value / eachPUSTprice
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                    else:
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                            require totalSupply >= 0
                                            totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = msg.value / eachPUSTprice
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                        else:
                                            require totalSupply <= topTotalSupply
                                            require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                            require topTotalSupply >= totalSupply
                                            require topTotalSupply >= topTotalSupply - totalSupply
                                            totalSupply = topTotalSupply
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = msg.value / eachPUSTprice
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                            else:
                                call msg.sender with:
                                   value msg.value - (msg.value / eachPUSTprice * eachPUSTprice) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= msg.value / eachPUSTprice
                                balances[address(msg.sender)] += msg.value / eachPUSTprice
                                require (msg.value / eachPUSTprice) + totalSupply >= totalSupply
                                require (msg.value / eachPUSTprice) + totalSupply >= msg.value / eachPUSTprice
                                totalSupply += msg.value / eachPUSTprice
                                emit buyPUST(msg.sender, msg.value / eachPUSTprice);
                                if lastCallAddress:
                                    require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = msg.value / eachPUSTprice
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                    else:
                                        require totalSupply <= topTotalSupply
                                        require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                        require topTotalSupply >= totalSupply
                                        require topTotalSupply >= topTotalSupply - totalSupply
                                        totalSupply = topTotalSupply
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = msg.value / eachPUSTprice
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                else:
                                    if epochLast:
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                            require totalSupply >= 0
                                            totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = msg.value / eachPUSTprice
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                        else:
                                            require totalSupply <= topTotalSupply
                                            require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                            require topTotalSupply >= totalSupply
                                            require topTotalSupply >= topTotalSupply - totalSupply
                                            totalSupply = topTotalSupply
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = msg.value / eachPUSTprice
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                    else:
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                            require totalSupply >= 0
                                            totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = msg.value / eachPUSTprice
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                        else:
                                            require totalSupply <= topTotalSupply
                                            require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                            require topTotalSupply >= totalSupply
                                            require topTotalSupply >= topTotalSupply - totalSupply
                                            totalSupply = topTotalSupply
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = msg.value / eachPUSTprice
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                        else:
                            require totalSupply <= topTotalSupply
                            if msg.value - (topTotalSupply * eachPUSTprice) + (totalSupply * eachPUSTprice) <= 0:
                                require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                require topTotalSupply >= totalSupply
                                require topTotalSupply >= topTotalSupply - totalSupply
                                totalSupply = topTotalSupply
                                emit buyPUST(msg.sender, topTotalSupply - totalSupply);
                                if lastCallAddress:
                                    require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = topTotalSupply - totalSupply
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                    else:
                                        require totalSupply <= topTotalSupply
                                        require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                        require topTotalSupply >= totalSupply
                                        require topTotalSupply >= topTotalSupply - totalSupply
                                        totalSupply = topTotalSupply
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = topTotalSupply - totalSupply
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                else:
                                    if epochLast:
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                            require totalSupply >= 0
                                            totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = topTotalSupply - totalSupply
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                        else:
                                            require totalSupply <= topTotalSupply
                                            require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                            require topTotalSupply >= totalSupply
                                            require topTotalSupply >= topTotalSupply - totalSupply
                                            totalSupply = topTotalSupply
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = topTotalSupply - totalSupply
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                    else:
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                            require totalSupply >= 0
                                            totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = topTotalSupply - totalSupply
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                        else:
                                            require totalSupply <= topTotalSupply
                                            require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                            require topTotalSupply >= totalSupply
                                            require topTotalSupply >= topTotalSupply - totalSupply
                                            totalSupply = topTotalSupply
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = topTotalSupply - totalSupply
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                            else:
                                call msg.sender with:
                                   value msg.value - (topTotalSupply * eachPUSTprice) + (totalSupply * eachPUSTprice) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                require topTotalSupply >= totalSupply
                                require topTotalSupply >= topTotalSupply - totalSupply
                                totalSupply = topTotalSupply
                                emit buyPUST(msg.sender, topTotalSupply - totalSupply);
                                if lastCallAddress:
                                    require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = topTotalSupply - totalSupply
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                    else:
                                        require totalSupply <= topTotalSupply
                                        require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                        require topTotalSupply >= totalSupply
                                        require topTotalSupply >= topTotalSupply - totalSupply
                                        totalSupply = topTotalSupply
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = topTotalSupply - totalSupply
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                else:
                                    if epochLast:
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                            require totalSupply >= 0
                                            totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = topTotalSupply - totalSupply
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                        else:
                                            require totalSupply <= topTotalSupply
                                            require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                            require topTotalSupply >= totalSupply
                                            require topTotalSupply >= topTotalSupply - totalSupply
                                            totalSupply = topTotalSupply
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = topTotalSupply - totalSupply
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                    else:
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                            require totalSupply >= 0
                                            totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = topTotalSupply - totalSupply
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                        else:
                                            require totalSupply <= topTotalSupply
                                            require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                            require topTotalSupply >= totalSupply
                                            require topTotalSupply >= topTotalSupply - totalSupply
                                            totalSupply = topTotalSupply
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = topTotalSupply - totalSupply
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                    else:
                        require totalSupply <= topTotalSupply
                        require topTotalSupply - totalSupply + balances[stor24] >= balances[stor24]
                        require balances[stor24] >= 0
                        balances[stor24] = topTotalSupply - totalSupply + balances[stor24]
                        require topTotalSupply >= totalSupply
                        require topTotalSupply >= topTotalSupply - totalSupply
                        totalSupply = topTotalSupply
                        require (block.number - lastEpochBlock / initBlockEpoch) + 1 > 0
                        idx = 0
                        while idx < (block.number - lastEpochBlock / initBlockEpoch) + 1 / 100:
                            price1 -= 5 * price1 / 100
                            price2 -= 7 * price2 / 1000
                            idx = idx + 1
                            continue 
                        price1 -= (5 * price1) + (5 * block.number - lastEpochBlock / initBlockEpoch * price1) - (500 * (block.number - lastEpochBlock / initBlockEpoch) + 1 / 100 * price1) / 10000
                        price2 -= (7 * price2) + (7 * block.number - lastEpochBlock / initBlockEpoch * price2) - (700 * (block.number - lastEpochBlock / initBlockEpoch) + 1 / 100 * price2) / 100000
                        eachPUSTprice = price1 + price2
                        epochLast = epochLast + (block.number - lastEpochBlock / initBlockEpoch) + 1
                        lastEpochTX = 0
                        require eachPUSTprice
                        require msg.value / eachPUSTprice > 0
                        require (msg.value / eachPUSTprice) + totalSupply >= totalSupply
                        require (msg.value / eachPUSTprice) + totalSupply >= msg.value / eachPUSTprice
                        if (msg.value / eachPUSTprice) + totalSupply <= topTotalSupply:
                            if msg.value - (msg.value / eachPUSTprice * eachPUSTprice) <= 0:
                                require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= msg.value / eachPUSTprice
                                balances[address(msg.sender)] += msg.value / eachPUSTprice
                                require (msg.value / eachPUSTprice) + totalSupply >= totalSupply
                                require (msg.value / eachPUSTprice) + totalSupply >= msg.value / eachPUSTprice
                                totalSupply += msg.value / eachPUSTprice
                                emit buyPUST(msg.sender, msg.value / eachPUSTprice);
                                if lastCallAddress:
                                    require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = msg.value / eachPUSTprice
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                    else:
                                        require totalSupply <= topTotalSupply
                                        require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                        require topTotalSupply >= totalSupply
                                        require topTotalSupply >= topTotalSupply - totalSupply
                                        totalSupply = topTotalSupply
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = msg.value / eachPUSTprice
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                else:
                                    if epochLast:
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                            require totalSupply >= 0
                                            totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = msg.value / eachPUSTprice
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                        else:
                                            require totalSupply <= topTotalSupply
                                            require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                            require topTotalSupply >= totalSupply
                                            require topTotalSupply >= topTotalSupply - totalSupply
                                            totalSupply = topTotalSupply
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = msg.value / eachPUSTprice
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                    else:
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                            require totalSupply >= 0
                                            totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = msg.value / eachPUSTprice
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                        else:
                                            require totalSupply <= topTotalSupply
                                            require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                            require topTotalSupply >= totalSupply
                                            require topTotalSupply >= topTotalSupply - totalSupply
                                            totalSupply = topTotalSupply
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = msg.value / eachPUSTprice
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                            else:
                                call msg.sender with:
                                   value msg.value - (msg.value / eachPUSTprice * eachPUSTprice) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= msg.value / eachPUSTprice
                                balances[address(msg.sender)] += msg.value / eachPUSTprice
                                require (msg.value / eachPUSTprice) + totalSupply >= totalSupply
                                require (msg.value / eachPUSTprice) + totalSupply >= msg.value / eachPUSTprice
                                totalSupply += msg.value / eachPUSTprice
                                emit buyPUST(msg.sender, msg.value / eachPUSTprice);
                                if lastCallAddress:
                                    require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = msg.value / eachPUSTprice
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                    else:
                                        require totalSupply <= topTotalSupply
                                        require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                        require topTotalSupply >= totalSupply
                                        require topTotalSupply >= topTotalSupply - totalSupply
                                        totalSupply = topTotalSupply
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = msg.value / eachPUSTprice
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                else:
                                    if epochLast:
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                            require totalSupply >= 0
                                            totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = msg.value / eachPUSTprice
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                        else:
                                            require totalSupply <= topTotalSupply
                                            require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                            require topTotalSupply >= totalSupply
                                            require topTotalSupply >= topTotalSupply - totalSupply
                                            totalSupply = topTotalSupply
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = msg.value / eachPUSTprice
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                    else:
                                        require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                            require totalSupply >= 0
                                            totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = msg.value / eachPUSTprice
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                        else:
                                            require totalSupply <= topTotalSupply
                                            require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                            require topTotalSupply >= totalSupply
                                            require topTotalSupply >= topTotalSupply - totalSupply
                                            totalSupply = topTotalSupply
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = msg.value / eachPUSTprice
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                        else:
                            require totalSupply <= topTotalSupply
                            if msg.value - (topTotalSupply * eachPUSTprice) + (totalSupply * eachPUSTprice) <= 0:
                                require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                require topTotalSupply >= totalSupply
                                require topTotalSupply >= topTotalSupply - totalSupply
                                totalSupply = topTotalSupply
                                emit buyPUST(msg.sender, topTotalSupply - totalSupply);
                                if lastCallAddress:
                                    require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = topTotalSupply - totalSupply
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                    else:
                                        require totalSupply <= topTotalSupply
                                        require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                        require topTotalSupply >= totalSupply
                                        require topTotalSupply >= topTotalSupply - totalSupply
                                        totalSupply = topTotalSupply
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = topTotalSupply - totalSupply
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                else:
                                    if epochLast:
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                            require totalSupply >= 0
                                            totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = topTotalSupply - totalSupply
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                        else:
                                            require totalSupply <= topTotalSupply
                                            require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                            require topTotalSupply >= totalSupply
                                            require topTotalSupply >= topTotalSupply - totalSupply
                                            totalSupply = topTotalSupply
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = topTotalSupply - totalSupply
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                    else:
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                            require totalSupply >= 0
                                            totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = topTotalSupply - totalSupply
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                        else:
                                            require totalSupply <= topTotalSupply
                                            require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                            require topTotalSupply >= totalSupply
                                            require topTotalSupply >= topTotalSupply - totalSupply
                                            totalSupply = topTotalSupply
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = topTotalSupply - totalSupply
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                            else:
                                call msg.sender with:
                                   value msg.value - (topTotalSupply * eachPUSTprice) + (totalSupply * eachPUSTprice) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                require topTotalSupply >= totalSupply
                                require topTotalSupply >= topTotalSupply - totalSupply
                                totalSupply = topTotalSupply
                                emit buyPUST(msg.sender, topTotalSupply - totalSupply);
                                if lastCallAddress:
                                    require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = topTotalSupply - totalSupply
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                    else:
                                        require totalSupply <= topTotalSupply
                                        require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] >= 0
                                        balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                        require topTotalSupply >= totalSupply
                                        require topTotalSupply >= topTotalSupply - totalSupply
                                        totalSupply = topTotalSupply
                                        lastEpochTX++
                                        lastCallAddress = msg.sender
                                        lastCallPUST = topTotalSupply - totalSupply
                                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                                        lastEpochBlock += eachUserWeight
                                else:
                                    if epochLast:
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                            require totalSupply >= 0
                                            totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = topTotalSupply - totalSupply
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                        else:
                                            require totalSupply <= topTotalSupply
                                            require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                            require topTotalSupply >= totalSupply
                                            require topTotalSupply >= topTotalSupply - totalSupply
                                            totalSupply = topTotalSupply
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = topTotalSupply - totalSupply
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                    else:
                                        require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                        require totalSupply >= 0
                                        if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                            require totalSupply >= 0
                                            totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = topTotalSupply - totalSupply
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
                                        else:
                                            require totalSupply <= topTotalSupply
                                            require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                            require balances[address(msg.sender)] >= 0
                                            balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                            require topTotalSupply >= totalSupply
                                            require topTotalSupply >= topTotalSupply - totalSupply
                                            totalSupply = topTotalSupply
                                            lastEpochTX++
                                            lastCallAddress = msg.sender
                                            lastCallPUST = topTotalSupply - totalSupply
                                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                                            lastEpochBlock += eachUserWeight
            else:
                require (block.number - lastEpochBlock / initBlockEpoch) + 1 > 0
                idx = 0
                while idx < (block.number - lastEpochBlock / initBlockEpoch) + 1 / 100:
                    price1 -= 5 * price1 / 100
                    price2 -= 7 * price2 / 1000
                    idx = idx + 1
                    continue 
                price1 -= (5 * price1) + (5 * block.number - lastEpochBlock / initBlockEpoch * price1) - (500 * (block.number - lastEpochBlock / initBlockEpoch) + 1 / 100 * price1) / 10000
                price2 -= (7 * price2) + (7 * block.number - lastEpochBlock / initBlockEpoch * price2) - (700 * (block.number - lastEpochBlock / initBlockEpoch) + 1 / 100 * price2) / 100000
                eachPUSTprice = price1 + price2
                epochLast = epochLast + (block.number - lastEpochBlock / initBlockEpoch) + 1
                lastEpochTX = 0
                require eachPUSTprice
                require msg.value / eachPUSTprice > 0
                require (msg.value / eachPUSTprice) + totalSupply >= totalSupply
                require (msg.value / eachPUSTprice) + totalSupply >= msg.value / eachPUSTprice
                if (msg.value / eachPUSTprice) + totalSupply <= topTotalSupply:
                    if msg.value - (msg.value / eachPUSTprice * eachPUSTprice) <= 0:
                        require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                        require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= msg.value / eachPUSTprice
                        balances[address(msg.sender)] += msg.value / eachPUSTprice
                        require (msg.value / eachPUSTprice) + totalSupply >= totalSupply
                        require (msg.value / eachPUSTprice) + totalSupply >= msg.value / eachPUSTprice
                        totalSupply += msg.value / eachPUSTprice
                        emit buyPUST(msg.sender, msg.value / eachPUSTprice);
                        if lastCallAddress:
                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                            require totalSupply >= 0
                            if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = msg.value / eachPUSTprice
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
                            else:
                                require totalSupply <= topTotalSupply
                                require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                require topTotalSupply >= totalSupply
                                require topTotalSupply >= topTotalSupply - totalSupply
                                totalSupply = topTotalSupply
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = msg.value / eachPUSTprice
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
                        else:
                            if epochLast:
                                require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                    require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                    require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = msg.value / eachPUSTprice
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                                else:
                                    require totalSupply <= topTotalSupply
                                    require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                    require topTotalSupply >= totalSupply
                                    require topTotalSupply >= topTotalSupply - totalSupply
                                    totalSupply = topTotalSupply
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = msg.value / eachPUSTprice
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                            else:
                                require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                    require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                    require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = msg.value / eachPUSTprice
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                                else:
                                    require totalSupply <= topTotalSupply
                                    require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                    require topTotalSupply >= totalSupply
                                    require topTotalSupply >= topTotalSupply - totalSupply
                                    totalSupply = topTotalSupply
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = msg.value / eachPUSTprice
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                    else:
                        call msg.sender with:
                           value msg.value - (msg.value / eachPUSTprice * eachPUSTprice) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                        require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= msg.value / eachPUSTprice
                        balances[address(msg.sender)] += msg.value / eachPUSTprice
                        require (msg.value / eachPUSTprice) + totalSupply >= totalSupply
                        require (msg.value / eachPUSTprice) + totalSupply >= msg.value / eachPUSTprice
                        totalSupply += msg.value / eachPUSTprice
                        emit buyPUST(msg.sender, msg.value / eachPUSTprice);
                        if lastCallAddress:
                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                            require totalSupply >= 0
                            if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = msg.value / eachPUSTprice
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
                            else:
                                require totalSupply <= topTotalSupply
                                require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                require topTotalSupply >= totalSupply
                                require topTotalSupply >= topTotalSupply - totalSupply
                                totalSupply = topTotalSupply
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = msg.value / eachPUSTprice
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
                        else:
                            if epochLast:
                                require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                    require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                    require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = msg.value / eachPUSTprice
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                                else:
                                    require totalSupply <= topTotalSupply
                                    require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                    require topTotalSupply >= totalSupply
                                    require topTotalSupply >= topTotalSupply - totalSupply
                                    totalSupply = topTotalSupply
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = msg.value / eachPUSTprice
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                            else:
                                require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                    require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                    require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = msg.value / eachPUSTprice
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                                else:
                                    require totalSupply <= topTotalSupply
                                    require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                    require topTotalSupply >= totalSupply
                                    require topTotalSupply >= topTotalSupply - totalSupply
                                    totalSupply = topTotalSupply
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = msg.value / eachPUSTprice
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                else:
                    require totalSupply <= topTotalSupply
                    if msg.value - (topTotalSupply * eachPUSTprice) + (totalSupply * eachPUSTprice) <= 0:
                        require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                        require balances[address(msg.sender)] >= 0
                        balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                        require topTotalSupply >= totalSupply
                        require topTotalSupply >= topTotalSupply - totalSupply
                        totalSupply = topTotalSupply
                        emit buyPUST(msg.sender, topTotalSupply - totalSupply);
                        if lastCallAddress:
                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                            require totalSupply >= 0
                            if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = topTotalSupply - totalSupply
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
                            else:
                                require totalSupply <= topTotalSupply
                                require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                require topTotalSupply >= totalSupply
                                require topTotalSupply >= topTotalSupply - totalSupply
                                totalSupply = topTotalSupply
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = topTotalSupply - totalSupply
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
                        else:
                            if epochLast:
                                require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                    require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                    require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = topTotalSupply - totalSupply
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                                else:
                                    require totalSupply <= topTotalSupply
                                    require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                    require topTotalSupply >= totalSupply
                                    require topTotalSupply >= topTotalSupply - totalSupply
                                    totalSupply = topTotalSupply
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = topTotalSupply - totalSupply
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                            else:
                                require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                    require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                    require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = topTotalSupply - totalSupply
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                                else:
                                    require totalSupply <= topTotalSupply
                                    require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                    require topTotalSupply >= totalSupply
                                    require topTotalSupply >= topTotalSupply - totalSupply
                                    totalSupply = topTotalSupply
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = topTotalSupply - totalSupply
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                    else:
                        call msg.sender with:
                           value msg.value - (topTotalSupply * eachPUSTprice) + (totalSupply * eachPUSTprice) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                        require balances[address(msg.sender)] >= 0
                        balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                        require topTotalSupply >= totalSupply
                        require topTotalSupply >= topTotalSupply - totalSupply
                        totalSupply = topTotalSupply
                        emit buyPUST(msg.sender, topTotalSupply - totalSupply);
                        if lastCallAddress:
                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                            require totalSupply >= 0
                            if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = topTotalSupply - totalSupply
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
                            else:
                                require totalSupply <= topTotalSupply
                                require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                require topTotalSupply >= totalSupply
                                require topTotalSupply >= topTotalSupply - totalSupply
                                totalSupply = topTotalSupply
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = topTotalSupply - totalSupply
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
                        else:
                            if epochLast:
                                require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                    require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                    require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = topTotalSupply - totalSupply
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                                else:
                                    require totalSupply <= topTotalSupply
                                    require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                    require topTotalSupply >= totalSupply
                                    require topTotalSupply >= topTotalSupply - totalSupply
                                    totalSupply = topTotalSupply
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = topTotalSupply - totalSupply
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                            else:
                                require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                    require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                    require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                    require totalSupply >= 0
                                    totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = topTotalSupply - totalSupply
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
                                else:
                                    require totalSupply <= topTotalSupply
                                    require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                    require balances[address(msg.sender)] >= 0
                                    balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                    require topTotalSupply >= totalSupply
                                    require topTotalSupply >= topTotalSupply - totalSupply
                                    totalSupply = topTotalSupply
                                    lastEpochTX++
                                    lastCallAddress = msg.sender
                                    lastCallPUST = topTotalSupply - totalSupply
                                    require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                    require eachUserWeight + lastEpochBlock >= eachUserWeight
                                    lastEpochBlock += eachUserWeight
    else:
        if epochLast == epochLast:
            require eachPUSTprice
            require msg.value / eachPUSTprice > 0
            require (msg.value / eachPUSTprice) + totalSupply >= totalSupply
            require (msg.value / eachPUSTprice) + totalSupply >= msg.value / eachPUSTprice
            if (msg.value / eachPUSTprice) + totalSupply <= topTotalSupply:
                if msg.value - (msg.value / eachPUSTprice * eachPUSTprice) <= 0:
                    require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                    require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= msg.value / eachPUSTprice
                    balances[address(msg.sender)] += msg.value / eachPUSTprice
                    require (msg.value / eachPUSTprice) + totalSupply >= totalSupply
                    require (msg.value / eachPUSTprice) + totalSupply >= msg.value / eachPUSTprice
                    totalSupply += msg.value / eachPUSTprice
                    emit buyPUST(msg.sender, msg.value / eachPUSTprice);
                    if lastCallAddress:
                        lastEpochTX++
                        lastCallAddress = msg.sender
                        lastCallPUST = msg.value / eachPUSTprice
                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                        lastEpochBlock += eachUserWeight
                    else:
                        if epochLast:
                            lastEpochTX++
                            lastCallAddress = msg.sender
                            lastCallPUST = msg.value / eachPUSTprice
                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                            lastEpochBlock += eachUserWeight
                        else:
                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                            require totalSupply >= 0
                            if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = msg.value / eachPUSTprice
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
                            else:
                                require totalSupply <= topTotalSupply
                                require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                require topTotalSupply >= totalSupply
                                require topTotalSupply >= topTotalSupply - totalSupply
                                totalSupply = topTotalSupply
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = msg.value / eachPUSTprice
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
                else:
                    call msg.sender with:
                       value msg.value - (msg.value / eachPUSTprice * eachPUSTprice) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= balances[address(msg.sender)]
                    require (msg.value / eachPUSTprice) + balances[address(msg.sender)] >= msg.value / eachPUSTprice
                    balances[address(msg.sender)] += msg.value / eachPUSTprice
                    require (msg.value / eachPUSTprice) + totalSupply >= totalSupply
                    require (msg.value / eachPUSTprice) + totalSupply >= msg.value / eachPUSTprice
                    totalSupply += msg.value / eachPUSTprice
                    emit buyPUST(msg.sender, msg.value / eachPUSTprice);
                    if lastCallAddress:
                        lastEpochTX++
                        lastCallAddress = msg.sender
                        lastCallPUST = msg.value / eachPUSTprice
                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                        lastEpochBlock += eachUserWeight
                    else:
                        if epochLast:
                            lastEpochTX++
                            lastCallAddress = msg.sender
                            lastCallPUST = msg.value / eachPUSTprice
                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                            lastEpochBlock += eachUserWeight
                        else:
                            require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                            require totalSupply >= 0
                            if (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                require (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = (2 * (msg.value / eachPUSTprice) - 1 / 10) + balances[address(msg.sender)] + 1
                                require (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                totalSupply = (2 * (msg.value / eachPUSTprice) - 1 / 10) + totalSupply + 1
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = msg.value / eachPUSTprice
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
                            else:
                                require totalSupply <= topTotalSupply
                                require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                require topTotalSupply >= totalSupply
                                require topTotalSupply >= topTotalSupply - totalSupply
                                totalSupply = topTotalSupply
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = msg.value / eachPUSTprice
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
            else:
                require totalSupply <= topTotalSupply
                if msg.value - (topTotalSupply * eachPUSTprice) + (totalSupply * eachPUSTprice) <= 0:
                    require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                    require balances[address(msg.sender)] >= 0
                    balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                    require topTotalSupply >= totalSupply
                    require topTotalSupply >= topTotalSupply - totalSupply
                    totalSupply = topTotalSupply
                    emit buyPUST(msg.sender, topTotalSupply - totalSupply);
                    if lastCallAddress:
                        lastEpochTX++
                        lastCallAddress = msg.sender
                        lastCallPUST = topTotalSupply - totalSupply
                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                        lastEpochBlock += eachUserWeight
                    else:
                        if epochLast:
                            lastEpochTX++
                            lastCallAddress = msg.sender
                            lastCallPUST = topTotalSupply - totalSupply
                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                            lastEpochBlock += eachUserWeight
                        else:
                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                            require totalSupply >= 0
                            if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = topTotalSupply - totalSupply
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
                            else:
                                require totalSupply <= topTotalSupply
                                require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                require topTotalSupply >= totalSupply
                                require topTotalSupply >= topTotalSupply - totalSupply
                                totalSupply = topTotalSupply
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = topTotalSupply - totalSupply
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
                else:
                    call msg.sender with:
                       value msg.value - (topTotalSupply * eachPUSTprice) + (totalSupply * eachPUSTprice) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                    require balances[address(msg.sender)] >= 0
                    balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                    require topTotalSupply >= totalSupply
                    require topTotalSupply >= topTotalSupply - totalSupply
                    totalSupply = topTotalSupply
                    emit buyPUST(msg.sender, topTotalSupply - totalSupply);
                    if lastCallAddress:
                        lastEpochTX++
                        lastCallAddress = msg.sender
                        lastCallPUST = topTotalSupply - totalSupply
                        require eachUserWeight + lastEpochBlock >= lastEpochBlock
                        require eachUserWeight + lastEpochBlock >= eachUserWeight
                        lastEpochBlock += eachUserWeight
                    else:
                        if epochLast:
                            lastEpochTX++
                            lastCallAddress = msg.sender
                            lastCallPUST = topTotalSupply - totalSupply
                            require eachUserWeight + lastEpochBlock >= lastEpochBlock
                            require eachUserWeight + lastEpochBlock >= eachUserWeight
                            lastEpochBlock += eachUserWeight
                        else:
                            require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                            require totalSupply >= 0
                            if (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                                require (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1 >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = (2 * topTotalSupply + -totalSupply - 1 / 10) + balances[address(msg.sender)] + 1
                                require (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1 >= totalSupply
                                require totalSupply >= 0
                                totalSupply = (2 * topTotalSupply + -totalSupply - 1 / 10) + totalSupply + 1
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = topTotalSupply - totalSupply
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
                            else:
                                require totalSupply <= topTotalSupply
                                require topTotalSupply - totalSupply + balances[address(msg.sender)] >= balances[address(msg.sender)]
                                require balances[address(msg.sender)] >= 0
                                balances[address(msg.sender)] = topTotalSupply - totalSupply + balances[address(msg.sender)]
                                require topTotalSupply >= totalSupply
                                require topTotalSupply >= topTotalSupply - totalSupply
                                totalSupply = topTotalSupply
                                lastEpochTX++
                                lastCallAddress = msg.sender
                                lastCallPUST = topTotalSupply - totalSupply
                                require eachUserWeight + lastEpochBlock >= lastEpochBlock
                                require eachUserWeight + lastEpochBlock >= eachUserWeight
                                lastEpochBlock += eachUserWeight
        else:
            require initBlockEpoch
            require initBlockEpoch + (block.number - lastEpochBlock / initBlockEpoch * initBlockEpoch) + lastEpochBlock >= lastEpochBlock
            require lastEpochBlock >= 0
            lastEpochBlock = initBlockEpoch + (block.number - lastEpochBlock / initBlockEpoch * initBlockEpoch) + lastEpochBlock
            require lastEpochTX != 1
            if not lastCallPUST:
                require totalSupply >= totalSupply
                require totalSupply >= 0
                require totalSupply <= topTotalSupply
                require balances[stor24] >= balances[stor24]
                require balances[stor24] >= 0
                require totalSupply >= totalSupply
                require totalSupply >= 0
                revert
            else:
                require (2 * lastCallPUST - 1 / 10) + totalSupply + 1 >= totalSupply
                require totalSupply >= 0
                if (2 * lastCallPUST - 1 / 10) + totalSupply + 1 <= topTotalSupply:
                    require (2 * lastCallPUST - 1 / 10) + balances[stor24] + 1 >= balances[stor24]
                    require balances[stor24] >= 0
                    balances[stor24] = (2 * lastCallPUST - 1 / 10) + balances[stor24] + 1
                    require (2 * lastCallPUST - 1 / 10) + totalSupply + 1 >= totalSupply
                    require totalSupply >= 0
                    totalSupply = (2 * lastCallPUST - 1 / 10) + totalSupply + 1
                    revert
                else:
                    require totalSupply <= topTotalSupply
                    require topTotalSupply - totalSupply + balances[stor24] >= balances[stor24]
                    require balances[stor24] >= 0
                    balances[stor24] = topTotalSupply - totalSupply + balances[stor24]
                    require topTotalSupply >= totalSupply
                    require topTotalSupply >= topTotalSupply - totalSupply
                    totalSupply = topTotalSupply
                    revert
}



}
