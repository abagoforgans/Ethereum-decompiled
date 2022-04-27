contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint8 stor22;
uint256 stor23;
uint256 stor24;
mapping of uint256 stor27;

function _fallback() payable {
    stor2 = 30
    stor3 = 3
    mem[96] = 420600 * 24 * 3600
    require (24 * 3600 * stor3) + (420600 * 24 * 3600) >= 420600 * 24 * 3600
    mem[128] = (24 * 3600 * stor3) + (420600 * 24 * 3600)
    require (24 * 3600 * 2 * stor3) + (420600 * 24 * 3600) >= 420600 * 24 * 3600
    mem[160] = (24 * 3600 * 2 * stor3) + (420600 * 24 * 3600)
    require (72 * 24 * 3600 * stor3) + (420600 * 24 * 3600) >= 420600 * 24 * 3600
    mem[192] = (72 * 24 * 3600 * stor3) + (420600 * 24 * 3600)
    require (24 * 3600 * 4 * stor3) + (420600 * 24 * 3600) >= 420600 * 24 * 3600
    mem[224] = (24 * 3600 * 4 * stor3) + (420600 * 24 * 3600)
    require (120 * 24 * 3600 * stor3) + (420600 * 24 * 3600) >= 420600 * 24 * 3600
    mem[256] = (120 * 24 * 3600 * stor3) + (420600 * 24 * 3600)
    require (144 * 24 * 3600 * stor3) + (420600 * 24 * 3600) >= 420600 * 24 * 3600
    mem[288] = (144 * 24 * 3600 * stor3) + (420600 * 24 * 3600)
    require (168 * 24 * 3600 * stor3) + (420600 * 24 * 3600) >= 420600 * 24 * 3600
    mem[320] = (168 * 24 * 3600 * stor3) + (420600 * 24 * 3600)
    require (24 * 3600 * 8 * stor3) + (420600 * 24 * 3600) >= 420600 * 24 * 3600
    mem[352] = (24 * 3600 * 8 * stor3) + (420600 * 24 * 3600)
    s = 4
    idx = 96
    while 384 > idx:
        uint256(stor[s].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 13
    while 13 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    mem[384] = 2000
    mem[416] = 1800
    mem[448] = 1650
    mem[480] = 1550
    mem[512] = 1450
    mem[544] = 1350
    mem[576] = 1250
    mem[608] = 1150
    mem[640] = 1100
    s = 13
    idx = 384
    while 672 > idx:
        uint16(stor[s].field_0) = mem[idx + 30 len 2]
        Mask(240, 0, stor[s].field_16) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 22
    while 22 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    stor22 = 1
    stor23 = 0
    require not msg.value
    stor0 = msg.sender
    stor24 = 10^16
    stor27[address(msg.sender)] = 10^16
    return code.data[1057 len 9025]
}



// =====================  Runtime code  =====================


const name = 'Bitloanex'

const decimals = 8

const symbol = 'BTLX'

const INITIAL_SUPPLY = 10^16

const START = (420600 * 24 * 3600)

const CAP = (35 * 3600)


array of struct stor0;
uint256 rate;
uint256 DAYS;
uint256 days_interval;
array of uint256 deadlines;
array of uint256 rates;
uint256 stor21;
uint8 initialized;
uint256 raisedAmount;
uint256 tokenAvailable;
array of struct investors;
array of uint256 timeBought;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function initialized() {
    return bool(initialized)
}

function totalSupply() {
    return tokenAvailable
}

function rate() {
    return rate
}

function days_interval() {
    return days_interval
}

function investors(uint256 arg1) {
    require arg1 < investors.length
    return address(investors[arg1].field_0)
}

function tokenAvailable() {
    return tokenAvailable
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getOwner() {
    return address(stor0.length)
}

function owner() {
    return address(stor0.length)
}

function deadlines(uint256 arg1) {
    require arg1 < 9
    return deadlines[arg1]
}

function timeBought(uint256 arg1) {
    require arg1 < timeBought.length
    return timeBought[arg1]
}

function DAYS() {
    return DAYS
}

function raisedAmount() {
    return raisedAmount
}

function rates(uint256 arg1) {
    require arg1 < 9
    return rates[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function destroy() {
    require msg.sender == address(stor0.length)
    selfdestruct(address(stor0.length))
}

function setRate(uint256 arg1) {
    require msg.sender == address(stor0.length)
    rate = arg1
}

function setDays(uint256 arg1) {
    require msg.sender == address(stor0.length)
    DAYS = arg1
}

function setInterval(uint256 arg1) {
    require msg.sender == address(stor0.length)
    days_interval = arg1
}

function initialize(bool arg1) {
    require msg.sender == address(stor0.length)
    initialized = uint8(arg1)
}

function transferOwnership(address arg1) {
    require arg1
    emit OwnershipTransferred(address(stor0.length), arg1);
    address(stor0.length) = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getRate() {
    if rate > 0:
        return rate
    idx = 0
    while uint8(idx) < 9:
        if block.timestamp >= deadlines[uint8(idx)]:
            idx = idx + 1
            continue 
        require uint8(idx - 1) < 9
        return rates[uint8(idx - 1)]
    return stor21
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function isActive() {
    if bool(initialized) != 1:
        return (bool(initialized) == 1)
    if block.timestamp < 420600 * 24 * 3600:
        return block.timestamp >= 420600 * 24 * 3600
    require (24 * 3600 * DAYS) + (420600 * 24 * 3600) >= 420600 * 24 * 3600
    if block.timestamp > (24 * 3600 * DAYS) + (420600 * 24 * 3600):
        return block.timestamp <= (24 * 3600 * DAYS) + (420600 * 24 * 3600)
    return not raisedAmount >= 35 * 10^18 * 3600
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getInvestors() {
    if not investors.length:
        mem[(32 * investors.length) + 160] = 32
        mem[(32 * investors.length) + 192] = investors.length
        mem[(32 * investors.length) + 224 len floor32(investors.length)] = mem[160 len floor32(investors.length)]
        return memory
          from (32 * investors.length) + 160
           len (96 * investors.length) + 64
    mem[160] = address(investors.field_0)
    idx = 160
    s = 0
    while (32 * investors.length) + 128 > idx:
        mem[idx + 32] = address(investors[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * investors.length) + 224 len floor32(investors.length)] = mem[160 len floor32(investors.length)]
    return Array(len=investors.length, data=mem[160 len floor32(investors.length)], mem[(32 * investors.length) + floor32(investors.length) + 224 len (32 * investors.length) - floor32(investors.length)]), 
}

function tokenBoughtPerTime(uint256 arg1) {
    idx = 0
    while uint8(idx) < timeBought.length:
        mem[0] = 26
        if arg1 <= timeBought[uint8(idx)]:
            stor0.length++
            if not stor0.length <= stor0.length + 1:
                s = sha3(0) + stor0.length + 1
                while sha3(0) + stor0.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            require uint8(idx) < timeBought.length
            mem[0] = 26
            stor0[stor0.length].field_0 = timeBought[uint8(idx)]
        idx = idx + 1
        continue 
    if not stor0.length:
        mem[(32 * stor0.length) + 160] = 32
        mem[(32 * stor0.length) + 192] = stor0.length
        mem[(32 * stor0.length) + 224 len floor32(stor0.length)] = mem[160 len floor32(stor0.length)]
        return memory
          from (32 * stor0.length) + 160
           len (96 * stor0.length) + 64
    mem[160] = uint256(stor0.field_0)
    idx = 160
    s = 0
    while (32 * stor0.length) + 128 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0.length) + 224 len floor32(stor0.length)] = mem[160 len floor32(stor0.length)]
    return Array(len=stor0.length, data=mem[160 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 224 len (32 * stor0.length) - floor32(stor0.length)]), 
}

function buyTokens() payable {
    require initialized
    require (24 * 3600 * DAYS) + (420600 * 24 * 3600) >= 420600 * 24 * 3600
    require block.timestamp <= (24 * 3600 * DAYS) + (420600 * 24 * 3600)
    if rate > 0:
        if not msg.value:
            emit BoughtTokens(0, msg.sender);
            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require 0 <= balanceOf[address(stor0.length)]
            require 0 <= tokenAvailable
        else:
            require msg.value
            require msg.value * rate / msg.value == rate
            emit BoughtTokens((msg.value * rate / 10^18), msg.sender);
            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^18) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * rate / 10^18
            require msg.value * rate / 10^18 <= balanceOf[address(stor0.length)]
            balanceOf[address(stor0.length)] -= msg.value * rate / 10^18
            require msg.value * rate / 10^18 <= tokenAvailable
    else:
        idx = 0
        while uint8(idx) < 9:
            if block.timestamp >= deadlines[uint8(idx)]:
                idx = idx + 1
                continue 
            require uint8(idx - 1) < 9
            if not msg.value:
                emit BoughtTokens(0, msg.sender);
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require 0 <= balanceOf[address(stor0.length)]
                require 0 <= tokenAvailable
            else:
                require msg.value
                require msg.value * rates[uint8(idx - 1)] / msg.value == rates[uint8(idx - 1)]
                emit BoughtTokens((msg.value * rates[uint8(idx - 1)] / 10^18), msg.sender);
                require balanceOf[address(msg.sender)] + (msg.value * rates[uint8(idx - 1)] / 10^18) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value * rates[uint8(idx - 1)] / 10^18
                require msg.value * rates[uint8(idx - 1)] / 10^18 <= balanceOf[address(stor0.length)]
                balanceOf[address(stor0.length)] -= msg.value * rates[uint8(idx - 1)] / 10^18
                require msg.value * rates[uint8(idx - 1)] / 10^18 <= tokenAvailable
            timeBought.length++
            if not timeBought.length <= timeBought.length + 1:
                idx = sha3(26) + timeBought.length + 1
                while sha3(26) + timeBought.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            timeBought[timeBought.length] = block.timestamp
            require raisedAmount + msg.value >= raisedAmount
            raisedAmount += msg.value
            investors.length++
            if not investors.length <= investors.length + 1:
                idx = sha3(25) + investors.length + 1
                while sha3(25) + investors.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            address(investors[investors.length].field_0) = msg.sender
        if not msg.value:
            emit BoughtTokens(0, msg.sender);
            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require 0 <= balanceOf[address(stor0.length)]
            require 0 <= tokenAvailable
        else:
            require msg.value
            require msg.value * stor21 / msg.value == stor21
            emit BoughtTokens((msg.value * stor21 / 10^18), msg.sender);
            require balanceOf[address(msg.sender)] + (msg.value * stor21 / 10^18) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * stor21 / 10^18
            require msg.value * stor21 / 10^18 <= balanceOf[address(stor0.length)]
            balanceOf[address(stor0.length)] -= msg.value * stor21 / 10^18
            require msg.value * stor21 / 10^18 <= tokenAvailable
    timeBought.length++
    if not timeBought.length <= timeBought.length + 1:
        idx = timeBought.length + 1
        while timeBought.length > idx:
            timeBought[idx] = 0
            idx = idx + 1
            continue 
    timeBought[timeBought.length] = block.timestamp
    require raisedAmount + msg.value >= raisedAmount
    raisedAmount += msg.value
    investors.length++
    if not investors.length <= investors.length + 1:
        idx = investors.length + 1
        while investors.length > idx:
            investors[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(investors[investors.length].field_0) = msg.sender
}

function _fallback() payable {
    require initialized
    require (24 * 3600 * DAYS) + (420600 * 24 * 3600) >= 420600 * 24 * 3600
    require block.timestamp <= (24 * 3600 * DAYS) + (420600 * 24 * 3600)
    if rate > 0:
        if not msg.value:
            emit BoughtTokens(0, msg.sender);
            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require 0 <= balanceOf[address(stor0.length)]
            require 0 <= tokenAvailable
        else:
            require msg.value
            require msg.value * rate / msg.value == rate
            emit BoughtTokens((msg.value * rate / 10^18), msg.sender);
            require balanceOf[address(msg.sender)] + (msg.value * rate / 10^18) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * rate / 10^18
            require msg.value * rate / 10^18 <= balanceOf[address(stor0.length)]
            balanceOf[address(stor0.length)] -= msg.value * rate / 10^18
            require msg.value * rate / 10^18 <= tokenAvailable
    else:
        idx = 0
        while uint8(idx) < 9:
            if block.timestamp >= deadlines[uint8(idx)]:
                idx = idx + 1
                continue 
            require uint8(idx - 1) < 9
            if not msg.value:
                emit BoughtTokens(0, msg.sender);
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require 0 <= balanceOf[address(stor0.length)]
                require 0 <= tokenAvailable
            else:
                require msg.value
                require msg.value * rates[uint8(idx - 1)] / msg.value == rates[uint8(idx - 1)]
                emit BoughtTokens((msg.value * rates[uint8(idx - 1)] / 10^18), msg.sender);
                require balanceOf[address(msg.sender)] + (msg.value * rates[uint8(idx - 1)] / 10^18) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += msg.value * rates[uint8(idx - 1)] / 10^18
                require msg.value * rates[uint8(idx - 1)] / 10^18 <= balanceOf[address(stor0.length)]
                balanceOf[address(stor0.length)] -= msg.value * rates[uint8(idx - 1)] / 10^18
                require msg.value * rates[uint8(idx - 1)] / 10^18 <= tokenAvailable
            timeBought.length++
            if not timeBought.length <= timeBought.length + 1:
                idx = sha3(26) + timeBought.length + 1
                while sha3(26) + timeBought.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            timeBought[timeBought.length] = block.timestamp
            require raisedAmount + msg.value >= raisedAmount
            raisedAmount += msg.value
            investors.length++
            if not investors.length <= investors.length + 1:
                idx = sha3(25) + investors.length + 1
                while sha3(25) + investors.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            address(investors[investors.length].field_0) = msg.sender
        if not msg.value:
            emit BoughtTokens(0, msg.sender);
            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require 0 <= balanceOf[address(stor0.length)]
            require 0 <= tokenAvailable
        else:
            require msg.value
            require msg.value * stor21 / msg.value == stor21
            emit BoughtTokens((msg.value * stor21 / 10^18), msg.sender);
            require balanceOf[address(msg.sender)] + (msg.value * stor21 / 10^18) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * stor21 / 10^18
            require msg.value * stor21 / 10^18 <= balanceOf[address(stor0.length)]
            balanceOf[address(stor0.length)] -= msg.value * stor21 / 10^18
            require msg.value * stor21 / 10^18 <= tokenAvailable
    timeBought.length++
    if not timeBought.length <= timeBought.length + 1:
        idx = timeBought.length + 1
        while timeBought.length > idx:
            timeBought[idx] = 0
            idx = idx + 1
            continue 
    timeBought[timeBought.length] = block.timestamp
    require raisedAmount + msg.value >= raisedAmount
    raisedAmount += msg.value
    investors.length++
    if not investors.length <= investors.length + 1:
        idx = investors.length + 1
        while investors.length > idx:
            investors[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(investors[investors.length].field_0) = msg.sender
}



}
