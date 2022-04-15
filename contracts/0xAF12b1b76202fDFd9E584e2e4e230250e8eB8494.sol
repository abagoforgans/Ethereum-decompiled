contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor5; offset 8
uint256 stor7;
uint256 stor8;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
mapping of uint256 stor14;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 9
    stor2.length.field_8 = 'Token 0.2' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 10
    stor3.length.field_8 = 'RICH token' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'RCH' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor5.field_0) = 8
    stor7 = 240 * 24 * 3600
    stor8 = 240 * 24 * 3600
    stor10 = 1
    stor11 = 5
    stor12 = 50
    stor13 = 100
    require not msg.value
    stor0 = msg.sender
    stor14[address(msg.sender)] = 0
    stor1 = 0
    Mask(248, 0, stor5.field_8) = 0
    return code.data[681 len 7454]
}



// =====================  Runtime code  =====================


address owner;
uint256 totalSupply;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 stor5; offset 8
uint256 stor5; offset 8
uint256 crowdsaleStart;
uint256 icoPeriod;
uint256 noIcoPeriod;
mapping of uint256 stor9;
uint256 burnPercentageDefault;
uint256 burnPercentage10m;
uint256 burnPercentage100m;
uint256 burnPercentage1000m;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function burnPercentage1000m() {
    return burnPercentage1000m
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function burnPercentageDefault() {
    return burnPercentageDefault
}

function icoPeriod() {
    return icoPeriod
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function noIcoPeriod() {
    return noIcoPeriod
}

function symbol() {
    return symbol[0 len symbol.length]
}

function burnPercentage100m() {
    return burnPercentage100m
}

function burnPercentage10m() {
    return burnPercentage10m
}

function crowdsaleStart() {
    return crowdsaleStart
}

function locked() {
    return bool(uint8(stor5.field_8))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function unlock() {
    require msg.sender == owner
    Mask(248, 0, stor5.field_8) = 0
    return 1
}

function setCrowdSaleStart(uint256 arg1) {
    require msg.sender == owner
    if crowdsaleStart <= 0:
        crowdsaleStart = arg1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor5.field_8)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getCurrentIcoNumber() {
    if block.timestamp < crowdsaleStart:
        return 0
    require icoPeriod + noIcoPeriod
    return ((block.timestamp - crowdsaleStart - (block.timestamp - crowdsaleStart % icoPeriod + noIcoPeriod) / icoPeriod + noIcoPeriod) + 1)
}

function getBurnLine() {
    if totalSupply < 10^15:
        return (totalSupply * burnPercentageDefault / 10000)
    if totalSupply < 10^16:
        return (totalSupply * burnPercentage10m / 10000)
    if totalSupply >= 10^17:
        return (totalSupply * burnPercentage1000m / 10000)
    return (totalSupply * burnPercentage100m / 10000)
}

function issue(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    if block.timestamp < crowdsaleStart:
        stor9[address(arg1)][0] = balanceOf[address(arg1)]
    else:
        require icoPeriod + noIcoPeriod
        stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) + 1] = balanceOf[address(arg1)]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor5.field_8)
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if block.timestamp < crowdsaleStart:
        stor9[address(arg1)][0] = balanceOf[address(arg1)]
        stor9[address(msg.sender)][0] = balanceOf[address(msg.sender)]
    else:
        require icoPeriod + noIcoPeriod
        stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) + 1] = balanceOf[address(arg1)]
        if block.timestamp < crowdsaleStart:
            stor9[address(msg.sender)][0] = balanceOf[address(msg.sender)]
        else:
            require icoPeriod + noIcoPeriod
            stor9[address(msg.sender)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) + 1] = balanceOf[address(msg.sender)]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor5.field_8)
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if block.timestamp < crowdsaleStart:
        stor9[address(arg2)][0] = balanceOf[address(arg2)]
        stor9[address(arg1)][0] = balanceOf[address(arg1)]
    else:
        require icoPeriod + noIcoPeriod
        stor9[address(arg2)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) + 1] = balanceOf[address(arg2)]
        if block.timestamp < crowdsaleStart:
            stor9[address(arg1)][0] = balanceOf[address(arg1)]
        else:
            require icoPeriod + noIcoPeriod
            stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) + 1] = balanceOf[address(arg1)]
    return 1
}

function isIncreasedEnough(address arg1) {
    if block.timestamp < crowdsaleStart:
        if balanceOf[address(arg1)] < stor9[address(arg1)][-2]:
            return 0
        if balanceOf[address(arg1)] - stor9[address(arg1)][-2] <= 12 * stor9[address(arg1)][-2] / 10:
            return 0
    else:
        require icoPeriod + noIcoPeriod
        if (block.timestamp - crowdsaleStart - (block.timestamp - crowdsaleStart % icoPeriod + noIcoPeriod) / icoPeriod + noIcoPeriod) - 1 >= 0:
            mem[0] = (block.timestamp - crowdsaleStart - (block.timestamp - crowdsaleStart % icoPeriod + noIcoPeriod) / icoPeriod + noIcoPeriod) - 1
            mem[32] = sha3(address(arg1), 9)
            if stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) - 1]:
                if balanceOf[address(arg1)] < stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) - 1]:
                    return 0
                if balanceOf[address(arg1)] - stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) - 1] <= 12 * stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) - 1] / 10:
                    return 0
            else:
                idx = (block.timestamp - crowdsaleStart - (block.timestamp - crowdsaleStart % icoPeriod + noIcoPeriod) / icoPeriod + noIcoPeriod) + 1
                s = stor[sha3(mem[0 len 64])]
                while idx >= 2:
                    mem[0] = idx - 2
                    mem[32] = sha3(address(arg1), 9)
                    if not stor9[address(arg1)][idx - 2]:
                        idx = idx - 1
                        s = stor9[address(arg1)][idx - 2]
                        continue 
                    if balanceOf[address(arg1)] < stor9[address(arg1)][idx - 2]:
                        return 0
                    if balanceOf[address(arg1)] - stor9[address(arg1)][idx - 2] <= 12 * stor9[address(arg1)][idx - 2] / 10:
                        return 0
                    return 1
                if balanceOf[address(arg1)] < s:
                    return 0
                if balanceOf[address(arg1)] - s <= 12 * s / 10:
                    return 0
    return 1
}

function burn(address arg1) {
    if totalSupply < 10^15:
        if balanceOf[address(arg1)] <= totalSupply * burnPercentageDefault / 10000:
            if block.timestamp < crowdsaleStart:
                if balanceOf[address(arg1)] < stor9[address(arg1)][-2]:
                    if (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                        require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10
                        require (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentageDefault / 10000)
                        require (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                        totalSupply = totalSupply - (totalSupply * burnPercentageDefault / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10)
                        emit Burn(arg1, (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)]);
                    else:
                        require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                        require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = 0
                        require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                        totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                        emit Burn(arg1, balanceOf[address(arg1)]);
                else:
                    if balanceOf[address(arg1)] - stor9[address(arg1)][-2] <= 12 * stor9[address(arg1)][-2] / 10:
                        if (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                            require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10
                            require (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentageDefault / 10000)
                            require (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                            totalSupply = totalSupply - (totalSupply * burnPercentageDefault / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10)
                            emit Burn(arg1, (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)]);
                        else:
                            require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                            require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = 0
                            require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                            totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                            emit Burn(arg1, balanceOf[address(arg1)]);
            else:
                require icoPeriod + noIcoPeriod
                if (block.timestamp - crowdsaleStart - (block.timestamp - crowdsaleStart % icoPeriod + noIcoPeriod) / icoPeriod + noIcoPeriod) - 1 >= 0:
                    mem[0] = (block.timestamp - crowdsaleStart - (block.timestamp - crowdsaleStart % icoPeriod + noIcoPeriod) / icoPeriod + noIcoPeriod) - 1
                    mem[32] = sha3(address(arg1), 9)
                    if stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) - 1]:
                        if balanceOf[address(arg1)] < stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) - 1]:
                            if (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10
                                require (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentageDefault / 10000)
                                require (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                totalSupply = totalSupply - (totalSupply * burnPercentageDefault / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10)
                                emit Burn(arg1, (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)]);
                            else:
                                require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = 0
                                require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                emit Burn(arg1, balanceOf[address(arg1)]);
                        else:
                            if balanceOf[address(arg1)] - stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) - 1] <= 12 * stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) - 1] / 10:
                                if (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                    require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10
                                    require (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentageDefault / 10000)
                                    require (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                    totalSupply = totalSupply - (totalSupply * burnPercentageDefault / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10)
                                    emit Burn(arg1, (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)]);
                                else:
                                    require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = 0
                                    require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                    totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                    emit Burn(arg1, balanceOf[address(arg1)]);
                    else:
                        idx = (block.timestamp - crowdsaleStart - (block.timestamp - crowdsaleStart % icoPeriod + noIcoPeriod) / icoPeriod + noIcoPeriod) + 1
                        s = stor[sha3(mem[0 len 64])]
                        while idx >= 2:
                            mem[0] = idx - 2
                            mem[32] = sha3(address(arg1), 9)
                            if not stor9[address(arg1)][idx - 2]:
                                idx = idx - 1
                                s = stor9[address(arg1)][idx - 2]
                                continue 
                            if balanceOf[address(arg1)] < stor9[address(arg1)][idx - 2]:
                                if (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                    require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10
                                    require (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentageDefault / 10000)
                                    require (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                    totalSupply = totalSupply - (totalSupply * burnPercentageDefault / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10)
                                    emit Burn(arg1, (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)]);
                                else:
                                    require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = 0
                                    require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                    totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                    emit Burn(arg1, balanceOf[address(arg1)]);
                            else:
                                if balanceOf[address(arg1)] - stor9[address(arg1)][idx - 2] <= 12 * stor9[address(arg1)][idx - 2] / 10:
                                    if (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                        require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10
                                        require (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentageDefault / 10000)
                                        require (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                        totalSupply = totalSupply - (totalSupply * burnPercentageDefault / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10)
                                        emit Burn(arg1, (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)]);
                                    else:
                                        require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                        require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = 0
                                        require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                        totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                        emit Burn(arg1, balanceOf[address(arg1)]);
                        if balanceOf[address(arg1)] < s:
                            if (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10
                                require (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentageDefault / 10000)
                                require (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                totalSupply = totalSupply - (totalSupply * burnPercentageDefault / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10)
                                emit Burn(arg1, (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)]);
                            else:
                                require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = 0
                                require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                emit Burn(arg1, balanceOf[address(arg1)]);
                        else:
                            if balanceOf[address(arg1)] - s <= 12 * s / 10:
                                if (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                    require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10
                                    require (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentageDefault / 10000)
                                    require (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                    totalSupply = totalSupply - (totalSupply * burnPercentageDefault / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)] / 10)
                                    emit Burn(arg1, (totalSupply * burnPercentageDefault / 10000) - balanceOf[address(arg1)]);
                                else:
                                    require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = 0
                                    require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                    totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                    emit Burn(arg1, balanceOf[address(arg1)]);
    else:
        if totalSupply < 10^16:
            if balanceOf[address(arg1)] <= totalSupply * burnPercentage10m / 10000:
                if block.timestamp < crowdsaleStart:
                    if balanceOf[address(arg1)] < stor9[address(arg1)][-2]:
                        if (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                            require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10
                            require (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage10m / 10000)
                            require (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                            totalSupply = totalSupply - (totalSupply * burnPercentage10m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10)
                            emit Burn(arg1, (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)]);
                        else:
                            require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                            require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = 0
                            require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                            totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                            emit Burn(arg1, balanceOf[address(arg1)]);
                    else:
                        if balanceOf[address(arg1)] - stor9[address(arg1)][-2] <= 12 * stor9[address(arg1)][-2] / 10:
                            if (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10
                                require (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage10m / 10000)
                                require (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                totalSupply = totalSupply - (totalSupply * burnPercentage10m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10)
                                emit Burn(arg1, (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)]);
                            else:
                                require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = 0
                                require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                emit Burn(arg1, balanceOf[address(arg1)]);
                else:
                    require icoPeriod + noIcoPeriod
                    if (block.timestamp - crowdsaleStart - (block.timestamp - crowdsaleStart % icoPeriod + noIcoPeriod) / icoPeriod + noIcoPeriod) - 1 >= 0:
                        mem[0] = (block.timestamp - crowdsaleStart - (block.timestamp - crowdsaleStart % icoPeriod + noIcoPeriod) / icoPeriod + noIcoPeriod) - 1
                        mem[32] = sha3(address(arg1), 9)
                        if stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) - 1]:
                            if balanceOf[address(arg1)] < stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) - 1]:
                                if (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                    require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10
                                    require (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage10m / 10000)
                                    require (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                    totalSupply = totalSupply - (totalSupply * burnPercentage10m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10)
                                    emit Burn(arg1, (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)]);
                                else:
                                    require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = 0
                                    require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                    totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                    emit Burn(arg1, balanceOf[address(arg1)]);
                            else:
                                if balanceOf[address(arg1)] - stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) - 1] <= 12 * stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) - 1] / 10:
                                    if (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                        require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10
                                        require (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage10m / 10000)
                                        require (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                        totalSupply = totalSupply - (totalSupply * burnPercentage10m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10)
                                        emit Burn(arg1, (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)]);
                                    else:
                                        require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                        require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = 0
                                        require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                        totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                        emit Burn(arg1, balanceOf[address(arg1)]);
                        else:
                            idx = (block.timestamp - crowdsaleStart - (block.timestamp - crowdsaleStart % icoPeriod + noIcoPeriod) / icoPeriod + noIcoPeriod) + 1
                            s = stor[sha3(mem[0 len 64])]
                            while idx >= 2:
                                mem[0] = idx - 2
                                mem[32] = sha3(address(arg1), 9)
                                if not stor9[address(arg1)][idx - 2]:
                                    idx = idx - 1
                                    s = stor9[address(arg1)][idx - 2]
                                    continue 
                                if balanceOf[address(arg1)] < stor9[address(arg1)][idx - 2]:
                                    if (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                        require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10
                                        require (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage10m / 10000)
                                        require (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                        totalSupply = totalSupply - (totalSupply * burnPercentage10m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10)
                                        emit Burn(arg1, (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)]);
                                    else:
                                        require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                        require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = 0
                                        require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                        totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                        emit Burn(arg1, balanceOf[address(arg1)]);
                                else:
                                    if balanceOf[address(arg1)] - stor9[address(arg1)][idx - 2] <= 12 * stor9[address(arg1)][idx - 2] / 10:
                                        if (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                            require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10
                                            require (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage10m / 10000)
                                            require (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                            totalSupply = totalSupply - (totalSupply * burnPercentage10m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10)
                                            emit Burn(arg1, (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)]);
                                        else:
                                            require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                            require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = 0
                                            require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                            totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                            emit Burn(arg1, balanceOf[address(arg1)]);
                            if balanceOf[address(arg1)] < s:
                                if (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                    require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10
                                    require (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage10m / 10000)
                                    require (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                    totalSupply = totalSupply - (totalSupply * burnPercentage10m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10)
                                    emit Burn(arg1, (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)]);
                                else:
                                    require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = 0
                                    require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                    totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                    emit Burn(arg1, balanceOf[address(arg1)]);
                            else:
                                if balanceOf[address(arg1)] - s <= 12 * s / 10:
                                    if (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                        require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10
                                        require (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage10m / 10000)
                                        require (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                        totalSupply = totalSupply - (totalSupply * burnPercentage10m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)] / 10)
                                        emit Burn(arg1, (totalSupply * burnPercentage10m / 10000) - balanceOf[address(arg1)]);
                                    else:
                                        require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                        require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = 0
                                        require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                        totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                        emit Burn(arg1, balanceOf[address(arg1)]);
        else:
            if totalSupply >= 10^17:
                if balanceOf[address(arg1)] <= totalSupply * burnPercentage1000m / 10000:
                    if block.timestamp < crowdsaleStart:
                        if balanceOf[address(arg1)] < stor9[address(arg1)][-2]:
                            if (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10
                                require (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage1000m / 10000)
                                require (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                totalSupply = totalSupply - (totalSupply * burnPercentage1000m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10)
                                emit Burn(arg1, (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)]);
                            else:
                                require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = 0
                                require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                emit Burn(arg1, balanceOf[address(arg1)]);
                        else:
                            if balanceOf[address(arg1)] - stor9[address(arg1)][-2] <= 12 * stor9[address(arg1)][-2] / 10:
                                if (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                    require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10
                                    require (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage1000m / 10000)
                                    require (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                    totalSupply = totalSupply - (totalSupply * burnPercentage1000m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10)
                                    emit Burn(arg1, (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)]);
                                else:
                                    require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = 0
                                    require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                    totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                    emit Burn(arg1, balanceOf[address(arg1)]);
                    else:
                        require icoPeriod + noIcoPeriod
                        if (block.timestamp - crowdsaleStart - (block.timestamp - crowdsaleStart % icoPeriod + noIcoPeriod) / icoPeriod + noIcoPeriod) - 1 >= 0:
                            mem[0] = (block.timestamp - crowdsaleStart - (block.timestamp - crowdsaleStart % icoPeriod + noIcoPeriod) / icoPeriod + noIcoPeriod) - 1
                            mem[32] = sha3(address(arg1), 9)
                            if stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) - 1]:
                                if balanceOf[address(arg1)] < stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) - 1]:
                                    if (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                        require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10
                                        require (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage1000m / 10000)
                                        require (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                        totalSupply = totalSupply - (totalSupply * burnPercentage1000m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10)
                                        emit Burn(arg1, (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)]);
                                    else:
                                        require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                        require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = 0
                                        require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                        totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                        emit Burn(arg1, balanceOf[address(arg1)]);
                                else:
                                    if balanceOf[address(arg1)] - stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) - 1] <= 12 * stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) - 1] / 10:
                                        if (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                            require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10
                                            require (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage1000m / 10000)
                                            require (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                            totalSupply = totalSupply - (totalSupply * burnPercentage1000m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10)
                                            emit Burn(arg1, (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)]);
                                        else:
                                            require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                            require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = 0
                                            require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                            totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                            emit Burn(arg1, balanceOf[address(arg1)]);
                            else:
                                idx = (block.timestamp - crowdsaleStart - (block.timestamp - crowdsaleStart % icoPeriod + noIcoPeriod) / icoPeriod + noIcoPeriod) + 1
                                s = stor[sha3(mem[0 len 64])]
                                while idx >= 2:
                                    mem[0] = idx - 2
                                    mem[32] = sha3(address(arg1), 9)
                                    if not stor9[address(arg1)][idx - 2]:
                                        idx = idx - 1
                                        s = stor9[address(arg1)][idx - 2]
                                        continue 
                                    if balanceOf[address(arg1)] < stor9[address(arg1)][idx - 2]:
                                        if (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                            require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10
                                            require (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage1000m / 10000)
                                            require (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                            totalSupply = totalSupply - (totalSupply * burnPercentage1000m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10)
                                            emit Burn(arg1, (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)]);
                                        else:
                                            require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                            require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = 0
                                            require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                            totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                            emit Burn(arg1, balanceOf[address(arg1)]);
                                    else:
                                        if balanceOf[address(arg1)] - stor9[address(arg1)][idx - 2] <= 12 * stor9[address(arg1)][idx - 2] / 10:
                                            if (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                                require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10
                                                require (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                                balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage1000m / 10000)
                                                require (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                                totalSupply = totalSupply - (totalSupply * burnPercentage1000m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10)
                                                emit Burn(arg1, (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)]);
                                            else:
                                                require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                                require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                                balanceOf[address(arg1)] = 0
                                                require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                                totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                                emit Burn(arg1, balanceOf[address(arg1)]);
                                if balanceOf[address(arg1)] < s:
                                    if (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                        require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10
                                        require (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage1000m / 10000)
                                        require (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                        totalSupply = totalSupply - (totalSupply * burnPercentage1000m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10)
                                        emit Burn(arg1, (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)]);
                                    else:
                                        require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                        require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = 0
                                        require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                        totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                        emit Burn(arg1, balanceOf[address(arg1)]);
                                else:
                                    if balanceOf[address(arg1)] - s <= 12 * s / 10:
                                        if (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                            require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10
                                            require (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage1000m / 10000)
                                            require (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                            totalSupply = totalSupply - (totalSupply * burnPercentage1000m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)] / 10)
                                            emit Burn(arg1, (totalSupply * burnPercentage1000m / 10000) - balanceOf[address(arg1)]);
                                        else:
                                            require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                            require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = 0
                                            require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                            totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                            emit Burn(arg1, balanceOf[address(arg1)]);
            else:
                if balanceOf[address(arg1)] <= totalSupply * burnPercentage100m / 10000:
                    if block.timestamp < crowdsaleStart:
                        if balanceOf[address(arg1)] < stor9[address(arg1)][-2]:
                            if (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10
                                require (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage100m / 10000)
                                require (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                totalSupply = totalSupply - (totalSupply * burnPercentage100m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10)
                                emit Burn(arg1, (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)]);
                            else:
                                require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = 0
                                require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                emit Burn(arg1, balanceOf[address(arg1)]);
                        else:
                            if balanceOf[address(arg1)] - stor9[address(arg1)][-2] <= 12 * stor9[address(arg1)][-2] / 10:
                                if (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                    require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10
                                    require (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage100m / 10000)
                                    require (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                    totalSupply = totalSupply - (totalSupply * burnPercentage100m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10)
                                    emit Burn(arg1, (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)]);
                                else:
                                    require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = 0
                                    require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                    totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                    emit Burn(arg1, balanceOf[address(arg1)]);
                    else:
                        require icoPeriod + noIcoPeriod
                        if (block.timestamp - crowdsaleStart - (block.timestamp - crowdsaleStart % icoPeriod + noIcoPeriod) / icoPeriod + noIcoPeriod) - 1 >= 0:
                            mem[0] = (block.timestamp - crowdsaleStart - (block.timestamp - crowdsaleStart % icoPeriod + noIcoPeriod) / icoPeriod + noIcoPeriod) - 1
                            mem[32] = sha3(address(arg1), 9)
                            if stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) - 1]:
                                if balanceOf[address(arg1)] < stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) - 1]:
                                    if (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                        require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10
                                        require (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage100m / 10000)
                                        require (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                        totalSupply = totalSupply - (totalSupply * burnPercentage100m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10)
                                        emit Burn(arg1, (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)]);
                                    else:
                                        require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                        require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = 0
                                        require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                        totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                        emit Burn(arg1, balanceOf[address(arg1)]);
                                else:
                                    if balanceOf[address(arg1)] - stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) - 1] <= 12 * stor9[address(arg1)][(block.timestamp - stor6 - (block.timestamp - stor6 % stor7 + stor8) / stor7 + stor8) - 1] / 10:
                                        if (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                            require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10
                                            require (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage100m / 10000)
                                            require (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                            totalSupply = totalSupply - (totalSupply * burnPercentage100m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10)
                                            emit Burn(arg1, (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)]);
                                        else:
                                            require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                            require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = 0
                                            require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                            totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                            emit Burn(arg1, balanceOf[address(arg1)]);
                            else:
                                idx = (block.timestamp - crowdsaleStart - (block.timestamp - crowdsaleStart % icoPeriod + noIcoPeriod) / icoPeriod + noIcoPeriod) + 1
                                s = stor[sha3(mem[0 len 64])]
                                while idx >= 2:
                                    mem[0] = idx - 2
                                    mem[32] = sha3(address(arg1), 9)
                                    if not stor9[address(arg1)][idx - 2]:
                                        idx = idx - 1
                                        s = stor9[address(arg1)][idx - 2]
                                        continue 
                                    if balanceOf[address(arg1)] < stor9[address(arg1)][idx - 2]:
                                        if (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                            require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10
                                            require (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage100m / 10000)
                                            require (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                            totalSupply = totalSupply - (totalSupply * burnPercentage100m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10)
                                            emit Burn(arg1, (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)]);
                                        else:
                                            require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                            require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = 0
                                            require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                            totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                            emit Burn(arg1, balanceOf[address(arg1)]);
                                    else:
                                        if balanceOf[address(arg1)] - stor9[address(arg1)][idx - 2] <= 12 * stor9[address(arg1)][idx - 2] / 10:
                                            if (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                                require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10
                                                require (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                                balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage100m / 10000)
                                                require (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                                totalSupply = totalSupply - (totalSupply * burnPercentage100m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10)
                                                emit Burn(arg1, (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)]);
                                            else:
                                                require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                                require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                                balanceOf[address(arg1)] = 0
                                                require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                                totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                                emit Burn(arg1, balanceOf[address(arg1)]);
                                if balanceOf[address(arg1)] < s:
                                    if (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                        require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10
                                        require (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage100m / 10000)
                                        require (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                        totalSupply = totalSupply - (totalSupply * burnPercentage100m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10)
                                        emit Burn(arg1, (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)]);
                                    else:
                                        require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                        require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = 0
                                        require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                        totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                        emit Burn(arg1, balanceOf[address(arg1)]);
                                else:
                                    if balanceOf[address(arg1)] - s <= 12 * s / 10:
                                        if (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]:
                                            require balanceOf[address(msg.sender)] + ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10
                                            require (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = (2 * balanceOf[address(arg1)]) - (totalSupply * burnPercentage100m / 10000)
                                            require (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] - ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10) <= totalSupply
                                            totalSupply = totalSupply - (totalSupply * burnPercentage100m / 10000) + balanceOf[address(arg1)] + ((totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)] / 10)
                                            emit Burn(arg1, (totalSupply * burnPercentage100m / 10000) - balanceOf[address(arg1)]);
                                        else:
                                            require balanceOf[address(msg.sender)] + (balanceOf[address(arg1)] / 10) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += balanceOf[address(arg1)] / 10
                                            require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
                                            balanceOf[address(arg1)] = 0
                                            require balanceOf[address(arg1)] - (balanceOf[address(arg1)] / 10) <= totalSupply
                                            totalSupply = totalSupply - balanceOf[address(arg1)] + (balanceOf[address(arg1)] / 10)
                                            emit Burn(arg1, balanceOf[address(arg1)]);
}



}
