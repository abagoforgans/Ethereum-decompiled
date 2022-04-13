contract main {


// =======================  Init code  ======================


array of uint256 stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
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
uint8 stor19;
uint256 stor20;
uint256 stor21;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = '1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 419360 * 3600
    stor6 = 420752 * 3600
    stor7 = 5 * 10^18
    stor8 = 110
    stor9 = 24 * 10^18
    stor10 = 115
    stor11 = 50 * 10^18
    stor12 = 120
    stor13 = 0
    stor14 = 120
    stor15 = 288 * 24 * 3600
    stor16 = 115
    stor17 = 576 * 24 * 3600
    stor18 = 110
    stor19 = 1
    stor20 = 0
    stor21 = 0
    require not msg.value
    return code.data[421 len 5134]
}



// =====================  Runtime code  =====================


const preSaleStartTime = 1503130673

const name = 'MilitaryPay'

const decimals = 18

const ownerAddress = 0x144efef99f7f126987c2b5ccd717cf6edad1e67d

const symbol = 'MTP'

const preSaleEndTime = (418304 * 3600)

const MTP_PER_ETH_SALE = 2000

const MTP_PER_ETH_PRE_SALE = 4000


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
uint256 maxPresaleSupply;
uint256 saleStartTime;
uint256 saleEndTime;
uint256 lowEtherBonusLimit;
uint256 lowEtherBonusValue;
uint256 midEtherBonusLimit;
uint256 midEtherBonusValue;
uint256 highEtherBonusLimit;
uint256 highEtherBonusValue;
uint256 highTimeBonusLimit;
uint256 highTimeBonusValue;
uint256 midTimeBonusLimit;
uint256 midTimeBonusValue;
uint256 lowTimeBonusLimit;
uint256 lowTimeBonusValue;
uint8 allowInvestment;
uint256 totalWEIInvested;
uint256 totalMTPAllocated;
mapping of uint256 wEIContributed;

function midTimeBonusValue() {
    return midTimeBonusValue
}

function highTimeBonusValue() {
    return highTimeBonusValue
}

function lowEtherBonusValue() {
    return lowEtherBonusValue
}

function highTimeBonusLimit() {
    return highTimeBonusLimit
}

function totalSupply() {
    return totalSupply
}

function saleStartTime() {
    return saleStartTime
}

function maxPresaleSupply() {
    return maxPresaleSupply
}

function WEIContributed(address arg1) {
    return wEIContributed[arg1]
}

function midTimeBonusLimit() {
    return midTimeBonusLimit
}

function highEtherBonusValue() {
    return highEtherBonusValue
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function highEtherBonusLimit() {
    return highEtherBonusLimit
}

function midEtherBonusLimit() {
    return midEtherBonusLimit
}

function midEtherBonusValue() {
    return midEtherBonusValue
}

function allowInvestment() {
    return bool(allowInvestment)
}

function lowTimeBonusLimit() {
    return lowTimeBonusLimit
}

function totalWEIInvested() {
    return totalWEIInvested
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function lowTimeBonusValue() {
    return lowTimeBonusValue
}

function saleEndTime() {
    return saleEndTime
}

function lowEtherBonusLimit() {
    return lowEtherBonusLimit
}

function totalMTPAllocated() {
    return totalMTPAllocated
}

function changeAllowInvestment(bool arg1) {
    require 0x144efef99f7f126987c2b5ccd717cf6edad1e67d == msg.sender
    allowInvestment = uint8(arg1)
}

function changeSaleTimes(uint256 arg1, uint256 arg2) {
    require 0x144efef99f7f126987c2b5ccd717cf6edad1e67d == msg.sender
    saleStartTime = arg1
    saleEndTime = arg2
}

function transferEther(address arg1, uint256 arg2) {
    require 0x144efef99f7f126987c2b5ccd717cf6edad1e67d == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function MTPToken() {
    require 0x144efef99f7f126987c2b5ccd717cf6edad1e67d == msg.sender
    totalSupply = 631000000 * 10^18
    maxPresaleSupply = (8 * totalSupply / 1000) + 347050000 * 10^18
    balanceOf[address(msg.sender)] = 347050000 * 10^18
    totalMTPAllocated = 347050000 * 10^18
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function changeTimeBonuses(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require 0x144efef99f7f126987c2b5ccd717cf6edad1e67d == msg.sender
    highTimeBonusLimit = arg1
    highTimeBonusValue = arg2
    midTimeBonusLimit = arg3
    midTimeBonusValue = arg4
    lowTimeBonusLimit = arg5
    lowTimeBonusValue = arg6
}

function changeEtherBonuses(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require 0x144efef99f7f126987c2b5ccd717cf6edad1e67d == msg.sender
    lowEtherBonusLimit = arg1
    lowEtherBonusValue = arg2
    midEtherBonusLimit = arg3
    midEtherBonusValue = arg4
    highEtherBonusLimit = arg5
    highEtherBonusValue = arg6
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require allowInvestment
    require msg.value >= 10^13
    if block.timestamp <= 1503130673:
        require block.timestamp > saleStartTime
        require block.timestamp < saleEndTime
        if msg.value:
            require msg.value
            require 2000 * msg.value / msg.value == 2000
        require 2000 * msg.value > 0
        if msg.value >= highEtherBonusLimit:
            if 2000 * msg.value:
                require 2000 * msg.value
                require 2000 * highEtherBonusValue * msg.value / 2000 * msg.value == highEtherBonusValue
            if block.timestamp >= saleStartTime + lowTimeBonusLimit:
                if 2000 * highEtherBonusValue * msg.value / 100:
                    require 2000 * highEtherBonusValue * msg.value / 100
                    require lowTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 2000 * highEtherBonusValue * msg.value / 100 == lowTimeBonusValue
                require lowTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100 <= totalSupply - totalMTPAllocated
                totalMTPAllocated += lowTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100
                require (lowTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += lowTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100
                require msg.value + totalWEIInvested >= totalWEIInvested
                totalWEIInvested += msg.value
                require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                wEIContributed[address(msg.sender)] += msg.value
                require totalMTPAllocated <= totalSupply
                require totalMTPAllocated > 0
                require (lowTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                require totalWEIInvested > 0
                require msg.value + wEIContributed[address(msg.sender)] > 0
                emit CreatedMTP((lowTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100), msg.sender);
            else:
                if block.timestamp >= saleStartTime + midTimeBonusLimit:
                    if 2000 * highEtherBonusValue * msg.value / 100:
                        require 2000 * highEtherBonusValue * msg.value / 100
                        require midTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 2000 * highEtherBonusValue * msg.value / 100 == midTimeBonusValue
                    require midTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100 <= totalSupply - totalMTPAllocated
                    totalMTPAllocated += midTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100
                    require (midTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += midTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100
                    require msg.value + totalWEIInvested >= totalWEIInvested
                    totalWEIInvested += msg.value
                    require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                    wEIContributed[address(msg.sender)] += msg.value
                    require totalMTPAllocated <= totalSupply
                    require totalMTPAllocated > 0
                    require (midTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                    require totalWEIInvested > 0
                    require msg.value + wEIContributed[address(msg.sender)] > 0
                    emit CreatedMTP((midTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100), msg.sender);
                else:
                    if block.timestamp < saleStartTime + highTimeBonusLimit:
                        require 2000 * highEtherBonusValue * msg.value / 100 <= totalSupply - totalMTPAllocated
                        totalMTPAllocated += 2000 * highEtherBonusValue * msg.value / 100
                        require (2000 * highEtherBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2000 * highEtherBonusValue * msg.value / 100
                        require msg.value + totalWEIInvested >= totalWEIInvested
                        totalWEIInvested += msg.value
                        require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                        wEIContributed[address(msg.sender)] += msg.value
                        require totalMTPAllocated <= totalSupply
                        require totalMTPAllocated > 0
                        require (2000 * highEtherBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] > 0
                        require totalWEIInvested > 0
                        require msg.value + wEIContributed[address(msg.sender)] > 0
                        emit CreatedMTP((2000 * highEtherBonusValue * msg.value / 100), msg.sender);
                    else:
                        if 2000 * highEtherBonusValue * msg.value / 100:
                            require 2000 * highEtherBonusValue * msg.value / 100
                            require highTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 2000 * highEtherBonusValue * msg.value / 100 == highTimeBonusValue
                        require highTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100 <= totalSupply - totalMTPAllocated
                        totalMTPAllocated += highTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100
                        require (highTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += highTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100
                        require msg.value + totalWEIInvested >= totalWEIInvested
                        totalWEIInvested += msg.value
                        require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                        wEIContributed[address(msg.sender)] += msg.value
                        require totalMTPAllocated <= totalSupply
                        require totalMTPAllocated > 0
                        require (highTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                        require totalWEIInvested > 0
                        require msg.value + wEIContributed[address(msg.sender)] > 0
                        emit CreatedMTP((highTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100), msg.sender);
        else:
            if msg.value >= midEtherBonusLimit:
                if 2000 * msg.value:
                    require 2000 * msg.value
                    require 2000 * midEtherBonusValue * msg.value / 2000 * msg.value == midEtherBonusValue
                if block.timestamp >= saleStartTime + lowTimeBonusLimit:
                    if 2000 * midEtherBonusValue * msg.value / 100:
                        require 2000 * midEtherBonusValue * msg.value / 100
                        require lowTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 2000 * midEtherBonusValue * msg.value / 100 == lowTimeBonusValue
                    require lowTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100 <= totalSupply - totalMTPAllocated
                    totalMTPAllocated += lowTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100
                    require (lowTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += lowTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100
                    require msg.value + totalWEIInvested >= totalWEIInvested
                    totalWEIInvested += msg.value
                    require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                    wEIContributed[address(msg.sender)] += msg.value
                    require totalMTPAllocated <= totalSupply
                    require totalMTPAllocated > 0
                    require (lowTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                    require totalWEIInvested > 0
                    require msg.value + wEIContributed[address(msg.sender)] > 0
                    emit CreatedMTP((lowTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100), msg.sender);
                else:
                    if block.timestamp >= saleStartTime + midTimeBonusLimit:
                        if 2000 * midEtherBonusValue * msg.value / 100:
                            require 2000 * midEtherBonusValue * msg.value / 100
                            require midTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 2000 * midEtherBonusValue * msg.value / 100 == midTimeBonusValue
                        require midTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100 <= totalSupply - totalMTPAllocated
                        totalMTPAllocated += midTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100
                        require (midTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += midTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100
                        require msg.value + totalWEIInvested >= totalWEIInvested
                        totalWEIInvested += msg.value
                        require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                        wEIContributed[address(msg.sender)] += msg.value
                        require totalMTPAllocated <= totalSupply
                        require totalMTPAllocated > 0
                        require (midTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                        require totalWEIInvested > 0
                        require msg.value + wEIContributed[address(msg.sender)] > 0
                        emit CreatedMTP((midTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100), msg.sender);
                    else:
                        if block.timestamp < saleStartTime + highTimeBonusLimit:
                            require 2000 * midEtherBonusValue * msg.value / 100 <= totalSupply - totalMTPAllocated
                            totalMTPAllocated += 2000 * midEtherBonusValue * msg.value / 100
                            require (2000 * midEtherBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 2000 * midEtherBonusValue * msg.value / 100
                            require msg.value + totalWEIInvested >= totalWEIInvested
                            totalWEIInvested += msg.value
                            require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                            wEIContributed[address(msg.sender)] += msg.value
                            require totalMTPAllocated <= totalSupply
                            require totalMTPAllocated > 0
                            require (2000 * midEtherBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] > 0
                            require totalWEIInvested > 0
                            require msg.value + wEIContributed[address(msg.sender)] > 0
                            emit CreatedMTP((2000 * midEtherBonusValue * msg.value / 100), msg.sender);
                        else:
                            if 2000 * midEtherBonusValue * msg.value / 100:
                                require 2000 * midEtherBonusValue * msg.value / 100
                                require highTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 2000 * midEtherBonusValue * msg.value / 100 == highTimeBonusValue
                            require highTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100 <= totalSupply - totalMTPAllocated
                            totalMTPAllocated += highTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100
                            require (highTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += highTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100
                            require msg.value + totalWEIInvested >= totalWEIInvested
                            totalWEIInvested += msg.value
                            require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                            wEIContributed[address(msg.sender)] += msg.value
                            require totalMTPAllocated <= totalSupply
                            require totalMTPAllocated > 0
                            require (highTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                            require totalWEIInvested > 0
                            require msg.value + wEIContributed[address(msg.sender)] > 0
                            emit CreatedMTP((highTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100), msg.sender);
            else:
                if msg.value < lowEtherBonusLimit:
                    if block.timestamp >= saleStartTime + lowTimeBonusLimit:
                        if 2000 * msg.value:
                            require 2000 * msg.value
                            require 2000 * lowTimeBonusValue * msg.value / 2000 * msg.value == lowTimeBonusValue
                        require 2000 * lowTimeBonusValue * msg.value / 100 <= totalSupply - totalMTPAllocated
                        totalMTPAllocated += 2000 * lowTimeBonusValue * msg.value / 100
                        require (2000 * lowTimeBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2000 * lowTimeBonusValue * msg.value / 100
                        require msg.value + totalWEIInvested >= totalWEIInvested
                        totalWEIInvested += msg.value
                        require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                        wEIContributed[address(msg.sender)] += msg.value
                        require totalMTPAllocated <= totalSupply
                        require totalMTPAllocated > 0
                        require (2000 * lowTimeBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] > 0
                        require totalWEIInvested > 0
                        require msg.value + wEIContributed[address(msg.sender)] > 0
                        emit CreatedMTP((2000 * lowTimeBonusValue * msg.value / 100), msg.sender);
                    else:
                        if block.timestamp >= saleStartTime + midTimeBonusLimit:
                            if 2000 * msg.value:
                                require 2000 * msg.value
                                require 2000 * midTimeBonusValue * msg.value / 2000 * msg.value == midTimeBonusValue
                            require 2000 * midTimeBonusValue * msg.value / 100 <= totalSupply - totalMTPAllocated
                            totalMTPAllocated += 2000 * midTimeBonusValue * msg.value / 100
                            require (2000 * midTimeBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 2000 * midTimeBonusValue * msg.value / 100
                            require msg.value + totalWEIInvested >= totalWEIInvested
                            totalWEIInvested += msg.value
                            require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                            wEIContributed[address(msg.sender)] += msg.value
                            require totalMTPAllocated <= totalSupply
                            require totalMTPAllocated > 0
                            require (2000 * midTimeBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] > 0
                            require totalWEIInvested > 0
                            require msg.value + wEIContributed[address(msg.sender)] > 0
                            emit CreatedMTP((2000 * midTimeBonusValue * msg.value / 100), msg.sender);
                        else:
                            if block.timestamp < saleStartTime + highTimeBonusLimit:
                                require 2000 * msg.value <= totalSupply - totalMTPAllocated
                                totalMTPAllocated += 2000 * msg.value
                                require (2000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 2000 * msg.value
                                require msg.value + totalWEIInvested >= totalWEIInvested
                                totalWEIInvested += msg.value
                                require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                                wEIContributed[address(msg.sender)] += msg.value
                                require totalMTPAllocated <= totalSupply
                                require totalMTPAllocated > 0
                                require (2000 * msg.value) + balanceOf[address(msg.sender)] > 0
                                require totalWEIInvested > 0
                                require msg.value + wEIContributed[address(msg.sender)] > 0
                                emit CreatedMTP((2000 * msg.value), msg.sender);
                            else:
                                if 2000 * msg.value:
                                    require 2000 * msg.value
                                    require 2000 * highTimeBonusValue * msg.value / 2000 * msg.value == highTimeBonusValue
                                require 2000 * highTimeBonusValue * msg.value / 100 <= totalSupply - totalMTPAllocated
                                totalMTPAllocated += 2000 * highTimeBonusValue * msg.value / 100
                                require (2000 * highTimeBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 2000 * highTimeBonusValue * msg.value / 100
                                require msg.value + totalWEIInvested >= totalWEIInvested
                                totalWEIInvested += msg.value
                                require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                                wEIContributed[address(msg.sender)] += msg.value
                                require totalMTPAllocated <= totalSupply
                                require totalMTPAllocated > 0
                                require (2000 * highTimeBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] > 0
                                require totalWEIInvested > 0
                                require msg.value + wEIContributed[address(msg.sender)] > 0
                                emit CreatedMTP((2000 * highTimeBonusValue * msg.value / 100), msg.sender);
                else:
                    if 2000 * msg.value:
                        require 2000 * msg.value
                        require 2000 * lowEtherBonusValue * msg.value / 2000 * msg.value == lowEtherBonusValue
                    if block.timestamp >= saleStartTime + lowTimeBonusLimit:
                        if 2000 * lowEtherBonusValue * msg.value / 100:
                            require 2000 * lowEtherBonusValue * msg.value / 100
                            require lowTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 2000 * lowEtherBonusValue * msg.value / 100 == lowTimeBonusValue
                        require lowTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100 <= totalSupply - totalMTPAllocated
                        totalMTPAllocated += lowTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100
                        require (lowTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += lowTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100
                        require msg.value + totalWEIInvested >= totalWEIInvested
                        totalWEIInvested += msg.value
                        require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                        wEIContributed[address(msg.sender)] += msg.value
                        require totalMTPAllocated <= totalSupply
                        require totalMTPAllocated > 0
                        require (lowTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                        require totalWEIInvested > 0
                        require msg.value + wEIContributed[address(msg.sender)] > 0
                        emit CreatedMTP((lowTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100), msg.sender);
                    else:
                        if block.timestamp >= saleStartTime + midTimeBonusLimit:
                            if 2000 * lowEtherBonusValue * msg.value / 100:
                                require 2000 * lowEtherBonusValue * msg.value / 100
                                require midTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 2000 * lowEtherBonusValue * msg.value / 100 == midTimeBonusValue
                            require midTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100 <= totalSupply - totalMTPAllocated
                            totalMTPAllocated += midTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100
                            require (midTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += midTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100
                            require msg.value + totalWEIInvested >= totalWEIInvested
                            totalWEIInvested += msg.value
                            require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                            wEIContributed[address(msg.sender)] += msg.value
                            require totalMTPAllocated <= totalSupply
                            require totalMTPAllocated > 0
                            require (midTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                            require totalWEIInvested > 0
                            require msg.value + wEIContributed[address(msg.sender)] > 0
                            emit CreatedMTP((midTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100), msg.sender);
                        else:
                            if block.timestamp < saleStartTime + highTimeBonusLimit:
                                require 2000 * lowEtherBonusValue * msg.value / 100 <= totalSupply - totalMTPAllocated
                                totalMTPAllocated += 2000 * lowEtherBonusValue * msg.value / 100
                                require (2000 * lowEtherBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 2000 * lowEtherBonusValue * msg.value / 100
                                require msg.value + totalWEIInvested >= totalWEIInvested
                                totalWEIInvested += msg.value
                                require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                                wEIContributed[address(msg.sender)] += msg.value
                                require totalMTPAllocated <= totalSupply
                                require totalMTPAllocated > 0
                                require (2000 * lowEtherBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] > 0
                                require totalWEIInvested > 0
                                require msg.value + wEIContributed[address(msg.sender)] > 0
                                emit CreatedMTP((2000 * lowEtherBonusValue * msg.value / 100), msg.sender);
                            else:
                                if 2000 * lowEtherBonusValue * msg.value / 100:
                                    require 2000 * lowEtherBonusValue * msg.value / 100
                                    require highTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 2000 * lowEtherBonusValue * msg.value / 100 == highTimeBonusValue
                                require highTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100 <= totalSupply - totalMTPAllocated
                                totalMTPAllocated += highTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100
                                require (highTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += highTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100
                                require msg.value + totalWEIInvested >= totalWEIInvested
                                totalWEIInvested += msg.value
                                require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                                wEIContributed[address(msg.sender)] += msg.value
                                require totalMTPAllocated <= totalSupply
                                require totalMTPAllocated > 0
                                require (highTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                                require totalWEIInvested > 0
                                require msg.value + wEIContributed[address(msg.sender)] > 0
                                emit CreatedMTP((highTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100), msg.sender);
    else:
        if block.timestamp < 418304 * 3600:
            if msg.value:
                require msg.value
                require 4000 * msg.value / msg.value == 4000
            require 4000 * msg.value > 0
            if msg.value >= highEtherBonusLimit:
                if 4000 * msg.value:
                    require 4000 * msg.value
                    require 4000 * highEtherBonusValue * msg.value / 4000 * msg.value == highEtherBonusValue
                if block.timestamp >= lowTimeBonusLimit + 1503130673:
                    if 4000 * highEtherBonusValue * msg.value / 100:
                        require 4000 * highEtherBonusValue * msg.value / 100
                        require lowTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 4000 * highEtherBonusValue * msg.value / 100 == lowTimeBonusValue
                    require lowTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 100 <= maxPresaleSupply - totalMTPAllocated
                    totalMTPAllocated += lowTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 100
                    require (lowTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += lowTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 100
                    require msg.value + totalWEIInvested >= totalWEIInvested
                    totalWEIInvested += msg.value
                    require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                    wEIContributed[address(msg.sender)] += msg.value
                    require totalMTPAllocated <= totalSupply
                    require totalMTPAllocated > 0
                    require (lowTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                    require totalWEIInvested > 0
                    require msg.value + wEIContributed[address(msg.sender)] > 0
                    emit CreatedMTP((lowTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 100), msg.sender);
                else:
                    if block.timestamp >= midTimeBonusLimit + 1503130673:
                        if 4000 * highEtherBonusValue * msg.value / 100:
                            require 4000 * highEtherBonusValue * msg.value / 100
                            require midTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 4000 * highEtherBonusValue * msg.value / 100 == midTimeBonusValue
                        require midTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 100 <= maxPresaleSupply - totalMTPAllocated
                        totalMTPAllocated += midTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 100
                        require (midTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += midTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 100
                        require msg.value + totalWEIInvested >= totalWEIInvested
                        totalWEIInvested += msg.value
                        require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                        wEIContributed[address(msg.sender)] += msg.value
                        require totalMTPAllocated <= totalSupply
                        require totalMTPAllocated > 0
                        require (midTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                        require totalWEIInvested > 0
                        require msg.value + wEIContributed[address(msg.sender)] > 0
                        emit CreatedMTP((midTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 100), msg.sender);
                    else:
                        if block.timestamp < highTimeBonusLimit + 1503130673:
                            require 4000 * highEtherBonusValue * msg.value / 100 <= maxPresaleSupply - totalMTPAllocated
                            totalMTPAllocated += 4000 * highEtherBonusValue * msg.value / 100
                            require (4000 * highEtherBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 4000 * highEtherBonusValue * msg.value / 100
                            require msg.value + totalWEIInvested >= totalWEIInvested
                            totalWEIInvested += msg.value
                            require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                            wEIContributed[address(msg.sender)] += msg.value
                            require totalMTPAllocated <= totalSupply
                            require totalMTPAllocated > 0
                            require (4000 * highEtherBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] > 0
                            require totalWEIInvested > 0
                            require msg.value + wEIContributed[address(msg.sender)] > 0
                            emit CreatedMTP((4000 * highEtherBonusValue * msg.value / 100), msg.sender);
                        else:
                            if 4000 * highEtherBonusValue * msg.value / 100:
                                require 4000 * highEtherBonusValue * msg.value / 100
                                require highTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 4000 * highEtherBonusValue * msg.value / 100 == highTimeBonusValue
                            require highTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 100 <= maxPresaleSupply - totalMTPAllocated
                            totalMTPAllocated += highTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 100
                            require (highTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += highTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 100
                            require msg.value + totalWEIInvested >= totalWEIInvested
                            totalWEIInvested += msg.value
                            require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                            wEIContributed[address(msg.sender)] += msg.value
                            require totalMTPAllocated <= totalSupply
                            require totalMTPAllocated > 0
                            require (highTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                            require totalWEIInvested > 0
                            require msg.value + wEIContributed[address(msg.sender)] > 0
                            emit CreatedMTP((highTimeBonusValue * 4000 * highEtherBonusValue * msg.value / 100 / 100), msg.sender);
            else:
                if msg.value >= midEtherBonusLimit:
                    if 4000 * msg.value:
                        require 4000 * msg.value
                        require 4000 * midEtherBonusValue * msg.value / 4000 * msg.value == midEtherBonusValue
                    if block.timestamp >= lowTimeBonusLimit + 1503130673:
                        if 4000 * midEtherBonusValue * msg.value / 100:
                            require 4000 * midEtherBonusValue * msg.value / 100
                            require lowTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 4000 * midEtherBonusValue * msg.value / 100 == lowTimeBonusValue
                        require lowTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 100 <= maxPresaleSupply - totalMTPAllocated
                        totalMTPAllocated += lowTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 100
                        require (lowTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += lowTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 100
                        require msg.value + totalWEIInvested >= totalWEIInvested
                        totalWEIInvested += msg.value
                        require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                        wEIContributed[address(msg.sender)] += msg.value
                        require totalMTPAllocated <= totalSupply
                        require totalMTPAllocated > 0
                        require (lowTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                        require totalWEIInvested > 0
                        require msg.value + wEIContributed[address(msg.sender)] > 0
                        emit CreatedMTP((lowTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 100), msg.sender);
                    else:
                        if block.timestamp >= midTimeBonusLimit + 1503130673:
                            if 4000 * midEtherBonusValue * msg.value / 100:
                                require 4000 * midEtherBonusValue * msg.value / 100
                                require midTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 4000 * midEtherBonusValue * msg.value / 100 == midTimeBonusValue
                            require midTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 100 <= maxPresaleSupply - totalMTPAllocated
                            totalMTPAllocated += midTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 100
                            require (midTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += midTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 100
                            require msg.value + totalWEIInvested >= totalWEIInvested
                            totalWEIInvested += msg.value
                            require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                            wEIContributed[address(msg.sender)] += msg.value
                            require totalMTPAllocated <= totalSupply
                            require totalMTPAllocated > 0
                            require (midTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                            require totalWEIInvested > 0
                            require msg.value + wEIContributed[address(msg.sender)] > 0
                            emit CreatedMTP((midTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 100), msg.sender);
                        else:
                            if block.timestamp < highTimeBonusLimit + 1503130673:
                                require 4000 * midEtherBonusValue * msg.value / 100 <= maxPresaleSupply - totalMTPAllocated
                                totalMTPAllocated += 4000 * midEtherBonusValue * msg.value / 100
                                require (4000 * midEtherBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 4000 * midEtherBonusValue * msg.value / 100
                                require msg.value + totalWEIInvested >= totalWEIInvested
                                totalWEIInvested += msg.value
                                require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                                wEIContributed[address(msg.sender)] += msg.value
                                require totalMTPAllocated <= totalSupply
                                require totalMTPAllocated > 0
                                require (4000 * midEtherBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] > 0
                                require totalWEIInvested > 0
                                require msg.value + wEIContributed[address(msg.sender)] > 0
                                emit CreatedMTP((4000 * midEtherBonusValue * msg.value / 100), msg.sender);
                            else:
                                if 4000 * midEtherBonusValue * msg.value / 100:
                                    require 4000 * midEtherBonusValue * msg.value / 100
                                    require highTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 4000 * midEtherBonusValue * msg.value / 100 == highTimeBonusValue
                                require highTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 100 <= maxPresaleSupply - totalMTPAllocated
                                totalMTPAllocated += highTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 100
                                require (highTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += highTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 100
                                require msg.value + totalWEIInvested >= totalWEIInvested
                                totalWEIInvested += msg.value
                                require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                                wEIContributed[address(msg.sender)] += msg.value
                                require totalMTPAllocated <= totalSupply
                                require totalMTPAllocated > 0
                                require (highTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                                require totalWEIInvested > 0
                                require msg.value + wEIContributed[address(msg.sender)] > 0
                                emit CreatedMTP((highTimeBonusValue * 4000 * midEtherBonusValue * msg.value / 100 / 100), msg.sender);
                else:
                    if msg.value < lowEtherBonusLimit:
                        if block.timestamp >= lowTimeBonusLimit + 1503130673:
                            if 4000 * msg.value:
                                require 4000 * msg.value
                                require 4000 * lowTimeBonusValue * msg.value / 4000 * msg.value == lowTimeBonusValue
                            require 4000 * lowTimeBonusValue * msg.value / 100 <= maxPresaleSupply - totalMTPAllocated
                            totalMTPAllocated += 4000 * lowTimeBonusValue * msg.value / 100
                            require (4000 * lowTimeBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 4000 * lowTimeBonusValue * msg.value / 100
                            require msg.value + totalWEIInvested >= totalWEIInvested
                            totalWEIInvested += msg.value
                            require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                            wEIContributed[address(msg.sender)] += msg.value
                            require totalMTPAllocated <= totalSupply
                            require totalMTPAllocated > 0
                            require (4000 * lowTimeBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] > 0
                            require totalWEIInvested > 0
                            require msg.value + wEIContributed[address(msg.sender)] > 0
                            emit CreatedMTP((4000 * lowTimeBonusValue * msg.value / 100), msg.sender);
                        else:
                            if block.timestamp >= midTimeBonusLimit + 1503130673:
                                if 4000 * msg.value:
                                    require 4000 * msg.value
                                    require 4000 * midTimeBonusValue * msg.value / 4000 * msg.value == midTimeBonusValue
                                require 4000 * midTimeBonusValue * msg.value / 100 <= maxPresaleSupply - totalMTPAllocated
                                totalMTPAllocated += 4000 * midTimeBonusValue * msg.value / 100
                                require (4000 * midTimeBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 4000 * midTimeBonusValue * msg.value / 100
                                require msg.value + totalWEIInvested >= totalWEIInvested
                                totalWEIInvested += msg.value
                                require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                                wEIContributed[address(msg.sender)] += msg.value
                                require totalMTPAllocated <= totalSupply
                                require totalMTPAllocated > 0
                                require (4000 * midTimeBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] > 0
                                require totalWEIInvested > 0
                                require msg.value + wEIContributed[address(msg.sender)] > 0
                                emit CreatedMTP((4000 * midTimeBonusValue * msg.value / 100), msg.sender);
                            else:
                                if block.timestamp < highTimeBonusLimit + 1503130673:
                                    require 4000 * msg.value <= maxPresaleSupply - totalMTPAllocated
                                    totalMTPAllocated += 4000 * msg.value
                                    require (4000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 4000 * msg.value
                                    require msg.value + totalWEIInvested >= totalWEIInvested
                                    totalWEIInvested += msg.value
                                    require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                                    wEIContributed[address(msg.sender)] += msg.value
                                    require totalMTPAllocated <= totalSupply
                                    require totalMTPAllocated > 0
                                    require (4000 * msg.value) + balanceOf[address(msg.sender)] > 0
                                    require totalWEIInvested > 0
                                    require msg.value + wEIContributed[address(msg.sender)] > 0
                                    emit CreatedMTP((4000 * msg.value), msg.sender);
                                else:
                                    if 4000 * msg.value:
                                        require 4000 * msg.value
                                        require 4000 * highTimeBonusValue * msg.value / 4000 * msg.value == highTimeBonusValue
                                    require 4000 * highTimeBonusValue * msg.value / 100 <= maxPresaleSupply - totalMTPAllocated
                                    totalMTPAllocated += 4000 * highTimeBonusValue * msg.value / 100
                                    require (4000 * highTimeBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 4000 * highTimeBonusValue * msg.value / 100
                                    require msg.value + totalWEIInvested >= totalWEIInvested
                                    totalWEIInvested += msg.value
                                    require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                                    wEIContributed[address(msg.sender)] += msg.value
                                    require totalMTPAllocated <= totalSupply
                                    require totalMTPAllocated > 0
                                    require (4000 * highTimeBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] > 0
                                    require totalWEIInvested > 0
                                    require msg.value + wEIContributed[address(msg.sender)] > 0
                                    emit CreatedMTP((4000 * highTimeBonusValue * msg.value / 100), msg.sender);
                    else:
                        if 4000 * msg.value:
                            require 4000 * msg.value
                            require 4000 * lowEtherBonusValue * msg.value / 4000 * msg.value == lowEtherBonusValue
                        if block.timestamp >= lowTimeBonusLimit + 1503130673:
                            if 4000 * lowEtherBonusValue * msg.value / 100:
                                require 4000 * lowEtherBonusValue * msg.value / 100
                                require lowTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 4000 * lowEtherBonusValue * msg.value / 100 == lowTimeBonusValue
                            require lowTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 100 <= maxPresaleSupply - totalMTPAllocated
                            totalMTPAllocated += lowTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 100
                            require (lowTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += lowTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 100
                            require msg.value + totalWEIInvested >= totalWEIInvested
                            totalWEIInvested += msg.value
                            require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                            wEIContributed[address(msg.sender)] += msg.value
                            require totalMTPAllocated <= totalSupply
                            require totalMTPAllocated > 0
                            require (lowTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                            require totalWEIInvested > 0
                            require msg.value + wEIContributed[address(msg.sender)] > 0
                            emit CreatedMTP((lowTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 100), msg.sender);
                        else:
                            if block.timestamp >= midTimeBonusLimit + 1503130673:
                                if 4000 * lowEtherBonusValue * msg.value / 100:
                                    require 4000 * lowEtherBonusValue * msg.value / 100
                                    require midTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 4000 * lowEtherBonusValue * msg.value / 100 == midTimeBonusValue
                                require midTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 100 <= maxPresaleSupply - totalMTPAllocated
                                totalMTPAllocated += midTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 100
                                require (midTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += midTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 100
                                require msg.value + totalWEIInvested >= totalWEIInvested
                                totalWEIInvested += msg.value
                                require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                                wEIContributed[address(msg.sender)] += msg.value
                                require totalMTPAllocated <= totalSupply
                                require totalMTPAllocated > 0
                                require (midTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                                require totalWEIInvested > 0
                                require msg.value + wEIContributed[address(msg.sender)] > 0
                                emit CreatedMTP((midTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 100), msg.sender);
                            else:
                                if block.timestamp < highTimeBonusLimit + 1503130673:
                                    require 4000 * lowEtherBonusValue * msg.value / 100 <= maxPresaleSupply - totalMTPAllocated
                                    totalMTPAllocated += 4000 * lowEtherBonusValue * msg.value / 100
                                    require (4000 * lowEtherBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 4000 * lowEtherBonusValue * msg.value / 100
                                    require msg.value + totalWEIInvested >= totalWEIInvested
                                    totalWEIInvested += msg.value
                                    require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                                    wEIContributed[address(msg.sender)] += msg.value
                                    require totalMTPAllocated <= totalSupply
                                    require totalMTPAllocated > 0
                                    require (4000 * lowEtherBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] > 0
                                    require totalWEIInvested > 0
                                    require msg.value + wEIContributed[address(msg.sender)] > 0
                                    emit CreatedMTP((4000 * lowEtherBonusValue * msg.value / 100), msg.sender);
                                else:
                                    if 4000 * lowEtherBonusValue * msg.value / 100:
                                        require 4000 * lowEtherBonusValue * msg.value / 100
                                        require highTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 4000 * lowEtherBonusValue * msg.value / 100 == highTimeBonusValue
                                    require highTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 100 <= maxPresaleSupply - totalMTPAllocated
                                    totalMTPAllocated += highTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 100
                                    require (highTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += highTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 100
                                    require msg.value + totalWEIInvested >= totalWEIInvested
                                    totalWEIInvested += msg.value
                                    require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                                    wEIContributed[address(msg.sender)] += msg.value
                                    require totalMTPAllocated <= totalSupply
                                    require totalMTPAllocated > 0
                                    require (highTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                                    require totalWEIInvested > 0
                                    require msg.value + wEIContributed[address(msg.sender)] > 0
                                    emit CreatedMTP((highTimeBonusValue * 4000 * lowEtherBonusValue * msg.value / 100 / 100), msg.sender);
        else:
            require block.timestamp > saleStartTime
            require block.timestamp < saleEndTime
            if msg.value:
                require msg.value
                require 2000 * msg.value / msg.value == 2000
            require 2000 * msg.value > 0
            if msg.value >= highEtherBonusLimit:
                if 2000 * msg.value:
                    require 2000 * msg.value
                    require 2000 * highEtherBonusValue * msg.value / 2000 * msg.value == highEtherBonusValue
                if block.timestamp >= saleStartTime + lowTimeBonusLimit:
                    if 2000 * highEtherBonusValue * msg.value / 100:
                        require 2000 * highEtherBonusValue * msg.value / 100
                        require lowTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 2000 * highEtherBonusValue * msg.value / 100 == lowTimeBonusValue
                    require lowTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100 <= totalSupply - totalMTPAllocated
                    totalMTPAllocated += lowTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100
                    require (lowTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += lowTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100
                    require msg.value + totalWEIInvested >= totalWEIInvested
                    totalWEIInvested += msg.value
                    require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                    wEIContributed[address(msg.sender)] += msg.value
                    require totalMTPAllocated <= totalSupply
                    require totalMTPAllocated > 0
                    require (lowTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                    require totalWEIInvested > 0
                    require msg.value + wEIContributed[address(msg.sender)] > 0
                    emit CreatedMTP((lowTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100), msg.sender);
                else:
                    if block.timestamp >= saleStartTime + midTimeBonusLimit:
                        if 2000 * highEtherBonusValue * msg.value / 100:
                            require 2000 * highEtherBonusValue * msg.value / 100
                            require midTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 2000 * highEtherBonusValue * msg.value / 100 == midTimeBonusValue
                        require midTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100 <= totalSupply - totalMTPAllocated
                        totalMTPAllocated += midTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100
                        require (midTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += midTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100
                        require msg.value + totalWEIInvested >= totalWEIInvested
                        totalWEIInvested += msg.value
                        require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                        wEIContributed[address(msg.sender)] += msg.value
                        require totalMTPAllocated <= totalSupply
                        require totalMTPAllocated > 0
                        require (midTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                        require totalWEIInvested > 0
                        require msg.value + wEIContributed[address(msg.sender)] > 0
                        emit CreatedMTP((midTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100), msg.sender);
                    else:
                        if block.timestamp < saleStartTime + highTimeBonusLimit:
                            require 2000 * highEtherBonusValue * msg.value / 100 <= totalSupply - totalMTPAllocated
                            totalMTPAllocated += 2000 * highEtherBonusValue * msg.value / 100
                            require (2000 * highEtherBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 2000 * highEtherBonusValue * msg.value / 100
                            require msg.value + totalWEIInvested >= totalWEIInvested
                            totalWEIInvested += msg.value
                            require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                            wEIContributed[address(msg.sender)] += msg.value
                            require totalMTPAllocated <= totalSupply
                            require totalMTPAllocated > 0
                            require (2000 * highEtherBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] > 0
                            require totalWEIInvested > 0
                            require msg.value + wEIContributed[address(msg.sender)] > 0
                            emit CreatedMTP((2000 * highEtherBonusValue * msg.value / 100), msg.sender);
                        else:
                            if 2000 * highEtherBonusValue * msg.value / 100:
                                require 2000 * highEtherBonusValue * msg.value / 100
                                require highTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 2000 * highEtherBonusValue * msg.value / 100 == highTimeBonusValue
                            require highTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100 <= totalSupply - totalMTPAllocated
                            totalMTPAllocated += highTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100
                            require (highTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += highTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100
                            require msg.value + totalWEIInvested >= totalWEIInvested
                            totalWEIInvested += msg.value
                            require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                            wEIContributed[address(msg.sender)] += msg.value
                            require totalMTPAllocated <= totalSupply
                            require totalMTPAllocated > 0
                            require (highTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                            require totalWEIInvested > 0
                            require msg.value + wEIContributed[address(msg.sender)] > 0
                            emit CreatedMTP((highTimeBonusValue * 2000 * highEtherBonusValue * msg.value / 100 / 100), msg.sender);
            else:
                if msg.value >= midEtherBonusLimit:
                    if 2000 * msg.value:
                        require 2000 * msg.value
                        require 2000 * midEtherBonusValue * msg.value / 2000 * msg.value == midEtherBonusValue
                    if block.timestamp >= saleStartTime + lowTimeBonusLimit:
                        if 2000 * midEtherBonusValue * msg.value / 100:
                            require 2000 * midEtherBonusValue * msg.value / 100
                            require lowTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 2000 * midEtherBonusValue * msg.value / 100 == lowTimeBonusValue
                        require lowTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100 <= totalSupply - totalMTPAllocated
                        totalMTPAllocated += lowTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100
                        require (lowTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += lowTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100
                        require msg.value + totalWEIInvested >= totalWEIInvested
                        totalWEIInvested += msg.value
                        require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                        wEIContributed[address(msg.sender)] += msg.value
                        require totalMTPAllocated <= totalSupply
                        require totalMTPAllocated > 0
                        require (lowTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                        require totalWEIInvested > 0
                        require msg.value + wEIContributed[address(msg.sender)] > 0
                        emit CreatedMTP((lowTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100), msg.sender);
                    else:
                        if block.timestamp >= saleStartTime + midTimeBonusLimit:
                            if 2000 * midEtherBonusValue * msg.value / 100:
                                require 2000 * midEtherBonusValue * msg.value / 100
                                require midTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 2000 * midEtherBonusValue * msg.value / 100 == midTimeBonusValue
                            require midTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100 <= totalSupply - totalMTPAllocated
                            totalMTPAllocated += midTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100
                            require (midTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += midTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100
                            require msg.value + totalWEIInvested >= totalWEIInvested
                            totalWEIInvested += msg.value
                            require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                            wEIContributed[address(msg.sender)] += msg.value
                            require totalMTPAllocated <= totalSupply
                            require totalMTPAllocated > 0
                            require (midTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                            require totalWEIInvested > 0
                            require msg.value + wEIContributed[address(msg.sender)] > 0
                            emit CreatedMTP((midTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100), msg.sender);
                        else:
                            if block.timestamp < saleStartTime + highTimeBonusLimit:
                                require 2000 * midEtherBonusValue * msg.value / 100 <= totalSupply - totalMTPAllocated
                                totalMTPAllocated += 2000 * midEtherBonusValue * msg.value / 100
                                require (2000 * midEtherBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 2000 * midEtherBonusValue * msg.value / 100
                                require msg.value + totalWEIInvested >= totalWEIInvested
                                totalWEIInvested += msg.value
                                require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                                wEIContributed[address(msg.sender)] += msg.value
                                require totalMTPAllocated <= totalSupply
                                require totalMTPAllocated > 0
                                require (2000 * midEtherBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] > 0
                                require totalWEIInvested > 0
                                require msg.value + wEIContributed[address(msg.sender)] > 0
                                emit CreatedMTP((2000 * midEtherBonusValue * msg.value / 100), msg.sender);
                            else:
                                if 2000 * midEtherBonusValue * msg.value / 100:
                                    require 2000 * midEtherBonusValue * msg.value / 100
                                    require highTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 2000 * midEtherBonusValue * msg.value / 100 == highTimeBonusValue
                                require highTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100 <= totalSupply - totalMTPAllocated
                                totalMTPAllocated += highTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100
                                require (highTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += highTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100
                                require msg.value + totalWEIInvested >= totalWEIInvested
                                totalWEIInvested += msg.value
                                require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                                wEIContributed[address(msg.sender)] += msg.value
                                require totalMTPAllocated <= totalSupply
                                require totalMTPAllocated > 0
                                require (highTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                                require totalWEIInvested > 0
                                require msg.value + wEIContributed[address(msg.sender)] > 0
                                emit CreatedMTP((highTimeBonusValue * 2000 * midEtherBonusValue * msg.value / 100 / 100), msg.sender);
                else:
                    if msg.value < lowEtherBonusLimit:
                        if block.timestamp >= saleStartTime + lowTimeBonusLimit:
                            if 2000 * msg.value:
                                require 2000 * msg.value
                                require 2000 * lowTimeBonusValue * msg.value / 2000 * msg.value == lowTimeBonusValue
                            require 2000 * lowTimeBonusValue * msg.value / 100 <= totalSupply - totalMTPAllocated
                            totalMTPAllocated += 2000 * lowTimeBonusValue * msg.value / 100
                            require (2000 * lowTimeBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 2000 * lowTimeBonusValue * msg.value / 100
                            require msg.value + totalWEIInvested >= totalWEIInvested
                            totalWEIInvested += msg.value
                            require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                            wEIContributed[address(msg.sender)] += msg.value
                            require totalMTPAllocated <= totalSupply
                            require totalMTPAllocated > 0
                            require (2000 * lowTimeBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] > 0
                            require totalWEIInvested > 0
                            require msg.value + wEIContributed[address(msg.sender)] > 0
                            emit CreatedMTP((2000 * lowTimeBonusValue * msg.value / 100), msg.sender);
                        else:
                            if block.timestamp >= saleStartTime + midTimeBonusLimit:
                                if 2000 * msg.value:
                                    require 2000 * msg.value
                                    require 2000 * midTimeBonusValue * msg.value / 2000 * msg.value == midTimeBonusValue
                                require 2000 * midTimeBonusValue * msg.value / 100 <= totalSupply - totalMTPAllocated
                                totalMTPAllocated += 2000 * midTimeBonusValue * msg.value / 100
                                require (2000 * midTimeBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 2000 * midTimeBonusValue * msg.value / 100
                                require msg.value + totalWEIInvested >= totalWEIInvested
                                totalWEIInvested += msg.value
                                require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                                wEIContributed[address(msg.sender)] += msg.value
                                require totalMTPAllocated <= totalSupply
                                require totalMTPAllocated > 0
                                require (2000 * midTimeBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] > 0
                                require totalWEIInvested > 0
                                require msg.value + wEIContributed[address(msg.sender)] > 0
                                emit CreatedMTP((2000 * midTimeBonusValue * msg.value / 100), msg.sender);
                            else:
                                if block.timestamp < saleStartTime + highTimeBonusLimit:
                                    require 2000 * msg.value <= totalSupply - totalMTPAllocated
                                    totalMTPAllocated += 2000 * msg.value
                                    require (2000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 2000 * msg.value
                                    require msg.value + totalWEIInvested >= totalWEIInvested
                                    totalWEIInvested += msg.value
                                    require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                                    wEIContributed[address(msg.sender)] += msg.value
                                    require totalMTPAllocated <= totalSupply
                                    require totalMTPAllocated > 0
                                    require (2000 * msg.value) + balanceOf[address(msg.sender)] > 0
                                    require totalWEIInvested > 0
                                    require msg.value + wEIContributed[address(msg.sender)] > 0
                                    emit CreatedMTP((2000 * msg.value), msg.sender);
                                else:
                                    if 2000 * msg.value:
                                        require 2000 * msg.value
                                        require 2000 * highTimeBonusValue * msg.value / 2000 * msg.value == highTimeBonusValue
                                    require 2000 * highTimeBonusValue * msg.value / 100 <= totalSupply - totalMTPAllocated
                                    totalMTPAllocated += 2000 * highTimeBonusValue * msg.value / 100
                                    require (2000 * highTimeBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 2000 * highTimeBonusValue * msg.value / 100
                                    require msg.value + totalWEIInvested >= totalWEIInvested
                                    totalWEIInvested += msg.value
                                    require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                                    wEIContributed[address(msg.sender)] += msg.value
                                    require totalMTPAllocated <= totalSupply
                                    require totalMTPAllocated > 0
                                    require (2000 * highTimeBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] > 0
                                    require totalWEIInvested > 0
                                    require msg.value + wEIContributed[address(msg.sender)] > 0
                                    emit CreatedMTP((2000 * highTimeBonusValue * msg.value / 100), msg.sender);
                    else:
                        if 2000 * msg.value:
                            require 2000 * msg.value
                            require 2000 * lowEtherBonusValue * msg.value / 2000 * msg.value == lowEtherBonusValue
                        if block.timestamp >= saleStartTime + lowTimeBonusLimit:
                            if 2000 * lowEtherBonusValue * msg.value / 100:
                                require 2000 * lowEtherBonusValue * msg.value / 100
                                require lowTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 2000 * lowEtherBonusValue * msg.value / 100 == lowTimeBonusValue
                            require lowTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100 <= totalSupply - totalMTPAllocated
                            totalMTPAllocated += lowTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100
                            require (lowTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += lowTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100
                            require msg.value + totalWEIInvested >= totalWEIInvested
                            totalWEIInvested += msg.value
                            require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                            wEIContributed[address(msg.sender)] += msg.value
                            require totalMTPAllocated <= totalSupply
                            require totalMTPAllocated > 0
                            require (lowTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                            require totalWEIInvested > 0
                            require msg.value + wEIContributed[address(msg.sender)] > 0
                            emit CreatedMTP((lowTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100), msg.sender);
                        else:
                            if block.timestamp >= saleStartTime + midTimeBonusLimit:
                                if 2000 * lowEtherBonusValue * msg.value / 100:
                                    require 2000 * lowEtherBonusValue * msg.value / 100
                                    require midTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 2000 * lowEtherBonusValue * msg.value / 100 == midTimeBonusValue
                                require midTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100 <= totalSupply - totalMTPAllocated
                                totalMTPAllocated += midTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100
                                require (midTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += midTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100
                                require msg.value + totalWEIInvested >= totalWEIInvested
                                totalWEIInvested += msg.value
                                require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                                wEIContributed[address(msg.sender)] += msg.value
                                require totalMTPAllocated <= totalSupply
                                require totalMTPAllocated > 0
                                require (midTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                                require totalWEIInvested > 0
                                require msg.value + wEIContributed[address(msg.sender)] > 0
                                emit CreatedMTP((midTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100), msg.sender);
                            else:
                                if block.timestamp < saleStartTime + highTimeBonusLimit:
                                    require 2000 * lowEtherBonusValue * msg.value / 100 <= totalSupply - totalMTPAllocated
                                    totalMTPAllocated += 2000 * lowEtherBonusValue * msg.value / 100
                                    require (2000 * lowEtherBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 2000 * lowEtherBonusValue * msg.value / 100
                                    require msg.value + totalWEIInvested >= totalWEIInvested
                                    totalWEIInvested += msg.value
                                    require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                                    wEIContributed[address(msg.sender)] += msg.value
                                    require totalMTPAllocated <= totalSupply
                                    require totalMTPAllocated > 0
                                    require (2000 * lowEtherBonusValue * msg.value / 100) + balanceOf[address(msg.sender)] > 0
                                    require totalWEIInvested > 0
                                    require msg.value + wEIContributed[address(msg.sender)] > 0
                                    emit CreatedMTP((2000 * lowEtherBonusValue * msg.value / 100), msg.sender);
                                else:
                                    if 2000 * lowEtherBonusValue * msg.value / 100:
                                        require 2000 * lowEtherBonusValue * msg.value / 100
                                        require highTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 2000 * lowEtherBonusValue * msg.value / 100 == highTimeBonusValue
                                    require highTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100 <= totalSupply - totalMTPAllocated
                                    totalMTPAllocated += highTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100
                                    require (highTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += highTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100
                                    require msg.value + totalWEIInvested >= totalWEIInvested
                                    totalWEIInvested += msg.value
                                    require msg.value + wEIContributed[address(msg.sender)] >= wEIContributed[address(msg.sender)]
                                    wEIContributed[address(msg.sender)] += msg.value
                                    require totalMTPAllocated <= totalSupply
                                    require totalMTPAllocated > 0
                                    require (highTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100) + balanceOf[address(msg.sender)] > 0
                                    require totalWEIInvested > 0
                                    require msg.value + wEIContributed[address(msg.sender)] > 0
                                    emit CreatedMTP((highTimeBonusValue * 2000 * lowEtherBonusValue * msg.value / 100 / 100), msg.sender);
}



}
