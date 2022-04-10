contract main {


// =======================  Init code  ======================


address stor0;
array of struct stor1;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
uint8 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
address stor21;
address stor22;
address stor23;
mapping of uint256 stor24;
uint256 stor26;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 9
    stor4.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 8
    stor5.length.field_8 = 'DeCenter' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 2
    stor6.length.field_8 = 'DC' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 8
    stor8 = 10^16
    stor9 = 6 * 10^15
    stor10 = 4 * 10^15
    stor11 = 100 * 10^6
    stor14 = 72 * 24 * 3600
    stor15 = 72 * 24 * 3600
    stor17 = 3
    stor18 = 3333300 * 10^6
    stor26 = 0
    require not msg.value
    stor0 = msg.sender
    stor1.length = 600000
    if not stor1.length <= 600000:
        idx = 500 * 3600
        while 3 * stor1.length > idx:
            stor1[idx].field_0 = 0
            stor1[idx].field_256 = 0
            stor1[idx].field_512 = 0
            idx = idx + 3
            continue 
    stor21 = code.data[8120 len 20]
    stor22 = code.data[8152 len 20]
    stor23 = code.data[8184 len 20]
    stor12 = code.data[8204 len 32]
    stor13 = code.data[8236 len 32]
    stor24[address(this.address)] = stor8
    require stor0 == msg.sender
    if stor26 <= 0:
        require block.timestamp - stor16 <= block.timestamp
        require block.timestamp - stor16 >= 8760 * 24 * 3600
    else:
        require stor26 - stor16 <= stor26
        require stor26 - stor16 >= 8760 * 24 * 3600
    require stor10 >= 8 * 10^14
    if stor26 <= 0:
        stor16 = block.timestamp
    else:
        stor16 = stor26
    stor10 -= 4 * 10^14
    require stor24[address(this.address)] - 4 * 10^14 <= stor24[address(this.address)]
    stor24[address(this.address)] -= 4 * 10^14
    require stor24[stor22] + 4 * 10^14 >= stor24[stor22]
    stor24[stor22] += 4 * 10^14
    stor10 -= 4 * 10^14
    require stor24[this.address] - 4 * 10^14 <= stor24[this.address]
    stor24[address(this.address)] = stor24[this.address] - 4 * 10^14
    require stor24[stor23] + 4 * 10^14 >= stor24[stor23]
    stor24[stor23] += 4 * 10^14
    emit code.data[8076 len 32]: 4 * 10^14, this.address, stor22
    emit code.data[8076 len 32]: 4 * 10^14, this.address, stor23
    return code.data[1480 len 6596]
}



// =====================  Runtime code  =====================


address owner;
array of struct stor1;
uint256 stor2;
uint256 stor3;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 availableTokens;
uint256 teamAndExpertsTokens;
uint256 price;
uint256 startTime;
uint256 refundStartTime;
uint256 refundDuration;
uint256 firstStageDuration;
uint256 lastScheduledTopUp;
uint256 lastProcessedDay;
uint256 maxDailyCap;
mapping of uint256 dailyTotals;
uint256 queuedAmount;
address beneficiaryAddress;
address expertsAccount;
address teamAccount;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 cTime;

function name() {
    return name[0 len name.length]
}

function refundDuration() {
    return refundDuration
}

function totalSupply() {
    return totalSupply
}

function lastProcessedDay() {
    return lastProcessedDay
}

function decimals() {
    return decimals
}

function beneficiary() {
    return beneficiaryAddress
}

function firstStageDuration() {
    return firstStageDuration
}

function standard() {
    return standard[0 len standard.length]
}

function availableTokens() {
    return availableTokens
}

function refundStartTime() {
    return refundStartTime
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function queuedAmount() {
    return queuedAmount
}

function startTime() {
    return startTime
}

function dailyTotals(uint256 arg1) {
    return dailyTotals[arg1]
}

function owner() {
    return owner
}

function teamAndExpertsTokens() {
    return teamAndExpertsTokens
}

function symbol() {
    return symbol[0 len symbol.length]
}

function expertsAccount() {
    return expertsAccount
}

function price() {
    return price
}

function lastScheduledTopUp() {
    return lastScheduledTopUp
}

function teamAccount() {
    return teamAccount
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function maxDailyCap() {
    return maxDailyCap
}

function cTime() {
    return cTime
}

function q() {
    return stor2, stor3
}

function queueSize() {
    return (stor3 - stor2)
}

function setCTime(uint256 arg1) {
    require owner == msg.sender
    cTime = arg1
}

function time() {
    if cTime <= 0:
        return block.timestamp
    return cTime
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function dayFor(uint256 arg1) {
    require arg1 - startTime <= arg1
    return (arg1 - startTime / 24 * 3600)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function today() {
    if cTime <= 0:
        if block.timestamp - startTime <= block.timestamp:
            return (block.timestamp - startTime / 24 * 3600)
    else:
        if cTime - startTime <= cTime:
            return (cTime - startTime / 24 * 3600)
    revert
}

function lowerLimitForToday() {
    if cTime <= 0:
        if block.timestamp - startTime <= block.timestamp:
            return (10^18 * block.timestamp - startTime / 24 * 3600)
    else:
        if cTime - startTime <= cTime:
            return (10^18 * cTime - startTime / 24 * 3600)
    revert
}

function closeRefund() {
    require owner == msg.sender
    if cTime <= 0:
        require block.timestamp - refundStartTime > refundDuration
    else:
        require cTime - refundStartTime > refundDuration
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[arg2] + arg3 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function scheduledTopUp() {
    require owner == msg.sender
    if cTime <= 0:
        require block.timestamp - lastScheduledTopUp <= block.timestamp
        require block.timestamp - lastScheduledTopUp >= 8760 * 24 * 3600
    else:
        require cTime - lastScheduledTopUp <= cTime
        require cTime - lastScheduledTopUp >= 8760 * 24 * 3600
    require teamAndExpertsTokens >= 8 * 10^14
    if cTime <= 0:
        lastScheduledTopUp = block.timestamp
    else:
        lastScheduledTopUp = cTime
    teamAndExpertsTokens -= 4 * 10^14
    require balanceOf[address(this.address)] - 4 * 10^14 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= 4 * 10^14
    require balanceOf[stor22] + 4 * 10^14 >= balanceOf[stor22]
    balanceOf[stor22] += 4 * 10^14
    teamAndExpertsTokens -= 4 * 10^14
    require balanceOf[this.address] - 4 * 10^14 <= balanceOf[this.address]
    balanceOf[address(this.address)] = balanceOf[this.address] - 4 * 10^14
    require balanceOf[stor23] + 4 * 10^14 >= balanceOf[stor23]
    balanceOf[stor23] += 4 * 10^14
    emit Transfer(4 * 10^14, this.address, expertsAccount);
    emit Transfer(4 * 10^14, this.address, teamAccount);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    if arg1 != this.address:
        require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[arg1] + arg2 >= balanceOf[arg1]
        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if cTime <= 0:
            require block.timestamp > refundStartTime
        else:
            require cTime > refundStartTime
        require eth.balance(this.address) >= arg2 * price
        require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[this.address] + arg2 >= balanceOf[this.address]
        balanceOf[address(this.address)] = balanceOf[this.address] + arg2
        require availableTokens + arg2 >= availableTokens
        availableTokens += arg2
        call msg.sender with:
           value arg2 * price wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer(arg2, msg.sender, this.address);
}

function processPendingTickets() {
    mem[64] = 192
    require owner == msg.sender
    s = 96
    s = 0
    s = 0
    while 0 < stor3 - stor2:
        mem[0] = lastProcessedDay + 1
        mem[32] = 19
        if cTime <= 0:
            if startTime + (24 * 3600 * lastProcessedDay) > block.timestamp:
            _54 = mem[64]
            mem[64] = mem[64] + 96
            mem[_54] = 0
            mem[_54 + 32] = 0
            mem[_54 + 64] = 0
            require stor3 != stor2
            require stor2 < stor1.length
            mem[0] = 1
            _58 = mem[64]
            mem[64] = mem[64] + 96
            mem[_58] = stor1[stor2].field_0
            mem[_58 + 32] = stor1[stor2].field_256
            mem[_58 + 64] = stor1[stor2].field_512
            if maxDailyCap - dailyTotals[stor17 + 1] < stor1[stor2].field_256:
                lastProcessedDay++
            else:
                if stor1[stor2].field_512 - 1000 > startTime + (24 * 3600 * lastProcessedDay):
                    lastProcessedDay++
                else:
                    require stor3 != stor2
                    require stor2 < stor1.length
                    stor1[stor2].field_0 = 0
                    stor1[stor2].field_256 = 0
                    stor1[stor2].field_512 = 0
                    require stor1.length
                    stor2 = stor2 + 1 % stor1.length
                    require availableTokens - stor1[stor2].field_256 <= availableTokens
                    availableTokens -= stor1[stor2].field_256
                    require queuedAmount - stor1[stor2].field_256 <= queuedAmount
                    queuedAmount -= stor1[stor2].field_256
                    require dailyTotals[stor17 + 1] + stor1[stor2].field_256 >= dailyTotals[stor17 + 1]
                    dailyTotals[stor17 + 1] += stor1[stor2].field_256
                    require balanceOf[address(this.address)] - stor1[stor2].field_256 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= stor1[stor2].field_256
                    require balanceOf[stor1[stor2].field_0] + stor1[stor2].field_256 >= balanceOf[stor1[stor2].field_0]
                    mem[32] = 24
                    balanceOf[stor1[stor2].field_0] += stor1[stor2].field_256
                    mem[0] = stor1[stor2].field_0
                    mem[mem[64]] = stor1[stor2].field_256
                    emit Transfer(stor1[stor2].field_256, this.address, stor1[stor2].field_0);
            s = _58
            s = maxDailyCap - dailyTotals[stor17 + 1]
            s = lastProcessedDay + 1
            continue 
        if startTime + (24 * 3600 * lastProcessedDay) > cTime:
        _55 = mem[64]
        mem[64] = mem[64] + 96
        mem[_55] = 0
        mem[_55 + 32] = 0
        mem[_55 + 64] = 0
        require stor3 != stor2
        require stor2 < stor1.length
        mem[0] = 1
        _59 = mem[64]
        mem[64] = mem[64] + 96
        mem[_59] = stor1[stor2].field_0
        mem[_59 + 32] = stor1[stor2].field_256
        mem[_59 + 64] = stor1[stor2].field_512
        if maxDailyCap - dailyTotals[stor17 + 1] < stor1[stor2].field_256:
            lastProcessedDay++
        else:
            if stor1[stor2].field_512 - 1000 > startTime + (24 * 3600 * lastProcessedDay):
                lastProcessedDay++
            else:
                require stor3 != stor2
                require stor2 < stor1.length
                stor1[stor2].field_0 = 0
                stor1[stor2].field_256 = 0
                stor1[stor2].field_512 = 0
                require stor1.length
                stor2 = stor2 + 1 % stor1.length
                require availableTokens - stor1[stor2].field_256 <= availableTokens
                availableTokens -= stor1[stor2].field_256
                require queuedAmount - stor1[stor2].field_256 <= queuedAmount
                queuedAmount -= stor1[stor2].field_256
                require dailyTotals[stor17 + 1] + stor1[stor2].field_256 >= dailyTotals[stor17 + 1]
                dailyTotals[stor17 + 1] += stor1[stor2].field_256
                require balanceOf[address(this.address)] - stor1[stor2].field_256 <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] -= stor1[stor2].field_256
                require balanceOf[stor1[stor2].field_0] + stor1[stor2].field_256 >= balanceOf[stor1[stor2].field_0]
                mem[32] = 24
                balanceOf[stor1[stor2].field_0] += stor1[stor2].field_256
                mem[0] = stor1[stor2].field_0
                mem[mem[64]] = stor1[stor2].field_256
                emit Transfer(stor1[stor2].field_256, this.address, stor1[stor2].field_0);
        s = _59
        s = maxDailyCap - dailyTotals[stor17 + 1]
        s = lastProcessedDay + 1
        continue 
}

function buy() payable {
    if cTime <= 0:
        require startTime <= block.timestamp
    else:
        require startTime <= cTime
    require price
    if cTime <= 0:
        if block.timestamp - startTime <= firstStageDuration:
            if cTime <= 0:
                require block.timestamp - startTime <= block.timestamp
                require 10^18 * block.timestamp - startTime / 24 * 3600 <= msg.value
            else:
                require cTime - startTime <= cTime
                require 10^18 * cTime - startTime / 24 * 3600 <= msg.value
            require msg.value / price <= availableTokens
            require 4 * msg.value / 5 >= msg.value / 5
            call beneficiaryAddress with:
               value 4 * msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require availableTokens - (msg.value / price) <= availableTokens
            availableTokens -= msg.value / price
            require balanceOf[address(this.address)] - (msg.value / price) <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= msg.value / price
            require balanceOf[msg.sender] + (msg.value / price) >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = balanceOf[msg.sender] + (msg.value / price)
            emit Transfer((msg.value / price), this.address, msg.sender);
        else:
            require 10^18 <= msg.value
            require msg.value <= 300 * 10^18
            require 4 * msg.value / 5 >= msg.value / 5
            call beneficiaryAddress with:
               value 4 * msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if maxDailyCap - dailyTotals[stor17 + 1] >= msg.value / price:
                require availableTokens - (msg.value / price) <= availableTokens
                availableTokens -= msg.value / price
                require balanceOf[address(this.address)] - (msg.value / price) <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] -= msg.value / price
                require dailyTotals[stor17 + 1] + (msg.value / price) >= dailyTotals[stor17 + 1]
                dailyTotals[stor17 + 1] += msg.value / price
                require balanceOf[address(msg.sender)] + (msg.value / price) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value / price
                emit Transfer((msg.value / price), this.address, msg.sender);
            else:
                require queuedAmount + (msg.value / price) >= queuedAmount
                queuedAmount += msg.value / price
                require queuedAmount + (msg.value / price) <= availableTokens
                require stor1.length
                require stor3 + 1 % stor1.length != stor2
                require stor3 < stor1.length
                stor1[stor3].field_0 = msg.sender
                stor1[stor3].field_256 = msg.value / price
                if cTime <= 0:
                    stor1[stor3].field_512 = block.timestamp
                else:
                    stor1[stor3].field_512 = cTime
                require stor1.length
                stor3 = stor3 + 1 % stor1.length
    else:
        if cTime - startTime <= firstStageDuration:
            if cTime <= 0:
                require block.timestamp - startTime <= block.timestamp
                require 10^18 * block.timestamp - startTime / 24 * 3600 <= msg.value
            else:
                require cTime - startTime <= cTime
                require 10^18 * cTime - startTime / 24 * 3600 <= msg.value
            require msg.value / price <= availableTokens
            require 4 * msg.value / 5 >= msg.value / 5
            call beneficiaryAddress with:
               value 4 * msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require availableTokens - (msg.value / price) <= availableTokens
            availableTokens -= msg.value / price
            require balanceOf[address(this.address)] - (msg.value / price) <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= msg.value / price
            require balanceOf[msg.sender] + (msg.value / price) >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = balanceOf[msg.sender] + (msg.value / price)
            emit Transfer((msg.value / price), this.address, msg.sender);
        else:
            require 10^18 <= msg.value
            require msg.value <= 300 * 10^18
            require 4 * msg.value / 5 >= msg.value / 5
            call beneficiaryAddress with:
               value 4 * msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if maxDailyCap - dailyTotals[stor17 + 1] >= msg.value / price:
                require availableTokens - (msg.value / price) <= availableTokens
                availableTokens -= msg.value / price
                require balanceOf[address(this.address)] - (msg.value / price) <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] -= msg.value / price
                require dailyTotals[stor17 + 1] + (msg.value / price) >= dailyTotals[stor17 + 1]
                dailyTotals[stor17 + 1] += msg.value / price
                require balanceOf[address(msg.sender)] + (msg.value / price) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value / price
                emit Transfer((msg.value / price), this.address, msg.sender);
            else:
                require queuedAmount + (msg.value / price) >= queuedAmount
                queuedAmount += msg.value / price
                require queuedAmount + (msg.value / price) <= availableTokens
                require stor1.length
                require stor3 + 1 % stor1.length != stor2
                require stor3 < stor1.length
                stor1[stor3].field_0 = msg.sender
                stor1[stor3].field_256 = msg.value / price
                if cTime <= 0:
                    stor1[stor3].field_512 = block.timestamp
                else:
                    stor1[stor3].field_512 = cTime
                require stor1.length
                stor3 = stor3 + 1 % stor1.length
}

function _fallback() payable {
    if cTime <= 0:
        require startTime <= block.timestamp
    else:
        require startTime <= cTime
    require price
    if cTime <= 0:
        if block.timestamp - startTime <= firstStageDuration:
            if cTime <= 0:
                require block.timestamp - startTime <= block.timestamp
                require 10^18 * block.timestamp - startTime / 24 * 3600 <= msg.value
            else:
                require cTime - startTime <= cTime
                require 10^18 * cTime - startTime / 24 * 3600 <= msg.value
            require msg.value / price <= availableTokens
            require 4 * msg.value / 5 >= msg.value / 5
            call beneficiaryAddress with:
               value 4 * msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require availableTokens - (msg.value / price) <= availableTokens
            availableTokens -= msg.value / price
            require balanceOf[address(this.address)] - (msg.value / price) <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= msg.value / price
            require balanceOf[msg.sender] + (msg.value / price) >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = balanceOf[msg.sender] + (msg.value / price)
            emit Transfer((msg.value / price), this.address, msg.sender);
        else:
            require 10^18 <= msg.value
            require msg.value <= 300 * 10^18
            require 4 * msg.value / 5 >= msg.value / 5
            call beneficiaryAddress with:
               value 4 * msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if maxDailyCap - dailyTotals[stor17 + 1] >= msg.value / price:
                require availableTokens - (msg.value / price) <= availableTokens
                availableTokens -= msg.value / price
                require balanceOf[address(this.address)] - (msg.value / price) <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] -= msg.value / price
                require dailyTotals[stor17 + 1] + (msg.value / price) >= dailyTotals[stor17 + 1]
                dailyTotals[stor17 + 1] += msg.value / price
                require balanceOf[address(msg.sender)] + (msg.value / price) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value / price
                emit Transfer((msg.value / price), this.address, msg.sender);
            else:
                require queuedAmount + (msg.value / price) >= queuedAmount
                queuedAmount += msg.value / price
                require queuedAmount + (msg.value / price) <= availableTokens
                require stor1.length
                require stor3 + 1 % stor1.length != stor2
                require stor3 < stor1.length
                stor1[stor3].field_0 = msg.sender
                stor1[stor3].field_256 = msg.value / price
                if cTime <= 0:
                    stor1[stor3].field_512 = block.timestamp
                else:
                    stor1[stor3].field_512 = cTime
                require stor1.length
                stor3 = stor3 + 1 % stor1.length
    else:
        if cTime - startTime <= firstStageDuration:
            if cTime <= 0:
                require block.timestamp - startTime <= block.timestamp
                require 10^18 * block.timestamp - startTime / 24 * 3600 <= msg.value
            else:
                require cTime - startTime <= cTime
                require 10^18 * cTime - startTime / 24 * 3600 <= msg.value
            require msg.value / price <= availableTokens
            require 4 * msg.value / 5 >= msg.value / 5
            call beneficiaryAddress with:
               value 4 * msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require availableTokens - (msg.value / price) <= availableTokens
            availableTokens -= msg.value / price
            require balanceOf[address(this.address)] - (msg.value / price) <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= msg.value / price
            require balanceOf[msg.sender] + (msg.value / price) >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = balanceOf[msg.sender] + (msg.value / price)
            emit Transfer((msg.value / price), this.address, msg.sender);
        else:
            require 10^18 <= msg.value
            require msg.value <= 300 * 10^18
            require 4 * msg.value / 5 >= msg.value / 5
            call beneficiaryAddress with:
               value 4 * msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if maxDailyCap - dailyTotals[stor17 + 1] >= msg.value / price:
                require availableTokens - (msg.value / price) <= availableTokens
                availableTokens -= msg.value / price
                require balanceOf[address(this.address)] - (msg.value / price) <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] -= msg.value / price
                require dailyTotals[stor17 + 1] + (msg.value / price) >= dailyTotals[stor17 + 1]
                dailyTotals[stor17 + 1] += msg.value / price
                require balanceOf[address(msg.sender)] + (msg.value / price) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value / price
                emit Transfer((msg.value / price), this.address, msg.sender);
            else:
                require queuedAmount + (msg.value / price) >= queuedAmount
                queuedAmount += msg.value / price
                require queuedAmount + (msg.value / price) <= availableTokens
                require stor1.length
                require stor3 + 1 % stor1.length != stor2
                require stor3 < stor1.length
                stor1[stor3].field_0 = msg.sender
                stor1[stor3].field_256 = msg.value / price
                if cTime <= 0:
                    stor1[stor3].field_512 = block.timestamp
                else:
                    stor1[stor3].field_512 = cTime
                require stor1.length
                stor3 = stor3 + 1 % stor1.length
}



}
