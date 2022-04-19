contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address stor9; offset 16

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 5
    stor0.length.field_8 = 'ERC20' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'BAP token' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'BAP' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 0
    stor6 = 0
    stor7 = 2100 * 10^6
    stor8 = 419146 * 3600
    stor9 = 0x12bf8e198a6474fc65cee0e1c6f1c7f23324c8d5
    require not msg.value
    return code.data[581 len 4892]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address owner;
uint256 tokensSoldToInvestors;
uint256 maxGoalInICO;
uint256 startTime;
uint8 stor9;
uint8 stor9; offset 8
address stor9;
uint256 stor9; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokensSoldToInvestors() {
    return tokensSoldToInvestors
}

function maxGoalInICO() {
    return maxGoalInICO
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function changeTimeAndMax(uint256 arg1, uint256 arg2) {
    startTime = arg1
    maxGoalInICO = arg2
}

function Kubera() {
    owner = 0xb27590b9d328ba0396271303e24db44132531411
    balanceOf[stor5] = 612500 * 3600
    totalSupply = 612500 * 3600
}

function approve(address arg1, uint256 arg2) {
    if block.timestamp < startTime:
        require not uint8(stor9.field_8)
    Mask(248, 0, stor9.field_8) = 1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn() {
    if not uint8(stor9.field_0):
        if block.timestamp > startTime:
            require balanceOf[stor5] <= totalSupply
            totalSupply = totalSupply + -balanceOf[stor5] + (250000 * 3600)
            balanceOf[stor5] = 0
            balanceOf[address(stor9.field_0)] = 250000 * 3600
            startTime = block.timestamp
            uint8(stor9.field_0) = 1
            emit Burned(balanceOf[stor5]);
        else:
            if tokensSoldToInvestors >= maxGoalInICO:
                require balanceOf[stor5] <= totalSupply
                totalSupply = totalSupply + -balanceOf[stor5] + (250000 * 3600)
                balanceOf[stor5] = 0
                balanceOf[address(stor9.field_0)] = 250000 * 3600
                startTime = block.timestamp
                uint8(stor9.field_0) = 1
                emit Burned(balanceOf[stor5]);
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp >= startTime
    if owner != msg.sender:
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + arg2 >= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    if uint8(stor9.field_0):
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + arg2 >= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    if block.timestamp > startTime:
        require balanceOf[stor5] <= totalSupply
        totalSupply = totalSupply + -balanceOf[stor5] + (250000 * 3600)
        balanceOf[stor5] = 0
        balanceOf[address(stor9.field_0)] = 250000 * 3600
        startTime = block.timestamp
        uint8(stor9.field_0) = 1
        emit Burned(balanceOf[stor5]);
    else:
        if tokensSoldToInvestors >= maxGoalInICO:
            require balanceOf[stor5] <= totalSupply
            totalSupply = totalSupply + -balanceOf[stor5] + (250000 * 3600)
            balanceOf[stor5] = 0
            balanceOf[address(stor9.field_0)] = 250000 * 3600
            startTime = block.timestamp
            uint8(stor9.field_0) = 1
            emit Burned(balanceOf[stor5]);
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.timestamp >= startTime:
        if arg1 != owner:
            if block.timestamp >= startTime:
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                require balanceOf[address(arg2)] + arg3 >= arg3
                balanceOf[address(arg2)] += arg3
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if arg3 >= maxGoalInICO:
                    require maxGoalInICO <= arg3
                    require arg3 - maxGoalInICO <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + maxGoalInICO
                    require balanceOf[address(arg2)] + arg3 - maxGoalInICO >= balanceOf[address(arg2)]
                    require balanceOf[address(arg2)] >= 0
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - maxGoalInICO
                    require arg3 - maxGoalInICO <= allowance[address(arg1)][address(msg.sender)]
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + maxGoalInICO
                    emit Transfer((arg3 - maxGoalInICO), arg1, arg2);
                else:
                    require tokensSoldToInvestors + arg3 >= tokensSoldToInvestors
                    require tokensSoldToInvestors + arg3 >= arg3
                    tokensSoldToInvestors += arg3
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                    require balanceOf[address(arg2)] + arg3 >= arg3
                    balanceOf[address(arg2)] += arg3
                    require arg3 <= allowance[address(arg1)][address(msg.sender)]
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Transfer(arg3, arg1, arg2);
        else:
            if block.timestamp < startTime:
                if arg3 >= maxGoalInICO:
                    require maxGoalInICO <= arg3
                    require arg3 - maxGoalInICO <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + maxGoalInICO
                    require balanceOf[address(arg2)] + arg3 - maxGoalInICO >= balanceOf[address(arg2)]
                    require balanceOf[address(arg2)] >= 0
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - maxGoalInICO
                    require arg3 - maxGoalInICO <= allowance[address(arg1)][address(msg.sender)]
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + maxGoalInICO
                    emit Transfer((arg3 - maxGoalInICO), arg1, arg2);
                else:
                    require tokensSoldToInvestors + arg3 >= tokensSoldToInvestors
                    require tokensSoldToInvestors + arg3 >= arg3
                    tokensSoldToInvestors += arg3
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                    require balanceOf[address(arg2)] + arg3 >= arg3
                    balanceOf[address(arg2)] += arg3
                    require arg3 <= allowance[address(arg1)][address(msg.sender)]
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Transfer(arg3, arg1, arg2);
            else:
                if not uint8(stor9.field_0):
                    if block.timestamp > startTime:
                        require balanceOf[stor5] <= totalSupply
                        totalSupply = totalSupply + -balanceOf[stor5] + (250000 * 3600)
                        balanceOf[stor5] = 0
                        balanceOf[address(stor9.field_0)] = 250000 * 3600
                        startTime = block.timestamp
                        uint8(stor9.field_0) = 1
                        emit Burned(balanceOf[stor5]);
                    else:
                        if tokensSoldToInvestors >= maxGoalInICO:
                            require balanceOf[stor5] <= totalSupply
                            totalSupply = totalSupply + -balanceOf[stor5] + (250000 * 3600)
                            balanceOf[stor5] = 0
                            balanceOf[address(stor9.field_0)] = 250000 * 3600
                            startTime = block.timestamp
                            uint8(stor9.field_0) = 1
                            emit Burned(balanceOf[stor5]);
                    return 0
                if block.timestamp >= startTime:
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                    require balanceOf[address(arg2)] + arg3 >= arg3
                    balanceOf[address(arg2)] += arg3
                    require arg3 <= allowance[address(arg1)][address(msg.sender)]
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg3 >= maxGoalInICO:
                        require maxGoalInICO <= arg3
                        require arg3 - maxGoalInICO <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + maxGoalInICO
                        require balanceOf[address(arg2)] + arg3 - maxGoalInICO >= balanceOf[address(arg2)]
                        require balanceOf[address(arg2)] >= 0
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - maxGoalInICO
                        require arg3 - maxGoalInICO <= allowance[address(arg1)][address(msg.sender)]
                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + maxGoalInICO
                        emit Transfer((arg3 - maxGoalInICO), arg1, arg2);
                    else:
                        require tokensSoldToInvestors + arg3 >= tokensSoldToInvestors
                        require tokensSoldToInvestors + arg3 >= arg3
                        tokensSoldToInvestors += arg3
                        require arg3 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3
                        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                        require balanceOf[address(arg2)] + arg3 >= arg3
                        balanceOf[address(arg2)] += arg3
                        require arg3 <= allowance[address(arg1)][address(msg.sender)]
                        allowance[address(arg1)][address(msg.sender)] -= arg3
                        emit Transfer(arg3, arg1, arg2);
    else:
        require arg1 == owner
        if block.timestamp < startTime:
            if arg3 >= maxGoalInICO:
                require maxGoalInICO <= arg3
                require arg3 - maxGoalInICO <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + maxGoalInICO
                require balanceOf[address(arg2)] + arg3 - maxGoalInICO >= balanceOf[address(arg2)]
                require balanceOf[address(arg2)] >= 0
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - maxGoalInICO
                require arg3 - maxGoalInICO <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + maxGoalInICO
                emit Transfer((arg3 - maxGoalInICO), arg1, arg2);
            else:
                require tokensSoldToInvestors + arg3 >= tokensSoldToInvestors
                require tokensSoldToInvestors + arg3 >= arg3
                tokensSoldToInvestors += arg3
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                require balanceOf[address(arg2)] + arg3 >= arg3
                balanceOf[address(arg2)] += arg3
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Transfer(arg3, arg1, arg2);
        else:
            if not uint8(stor9.field_0):
                if block.timestamp > startTime:
                    require balanceOf[stor5] <= totalSupply
                    totalSupply = totalSupply + -balanceOf[stor5] + (250000 * 3600)
                    balanceOf[stor5] = 0
                    balanceOf[address(stor9.field_0)] = 250000 * 3600
                    startTime = block.timestamp
                    uint8(stor9.field_0) = 1
                    emit Burned(balanceOf[stor5]);
                else:
                    if tokensSoldToInvestors >= maxGoalInICO:
                        require balanceOf[stor5] <= totalSupply
                        totalSupply = totalSupply + -balanceOf[stor5] + (250000 * 3600)
                        balanceOf[stor5] = 0
                        balanceOf[address(stor9.field_0)] = 250000 * 3600
                        startTime = block.timestamp
                        uint8(stor9.field_0) = 1
                        emit Burned(balanceOf[stor5]);
                return 0
            if block.timestamp >= startTime:
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                require balanceOf[address(arg2)] + arg3 >= arg3
                balanceOf[address(arg2)] += arg3
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if arg3 >= maxGoalInICO:
                    require maxGoalInICO <= arg3
                    require arg3 - maxGoalInICO <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + maxGoalInICO
                    require balanceOf[address(arg2)] + arg3 - maxGoalInICO >= balanceOf[address(arg2)]
                    require balanceOf[address(arg2)] >= 0
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - maxGoalInICO
                    require arg3 - maxGoalInICO <= allowance[address(arg1)][address(msg.sender)]
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + maxGoalInICO
                    emit Transfer((arg3 - maxGoalInICO), arg1, arg2);
                else:
                    require tokensSoldToInvestors + arg3 >= tokensSoldToInvestors
                    require tokensSoldToInvestors + arg3 >= arg3
                    tokensSoldToInvestors += arg3
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                    require balanceOf[address(arg2)] + arg3 >= arg3
                    balanceOf[address(arg2)] += arg3
                    require arg3 <= allowance[address(arg1)][address(msg.sender)]
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
