contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
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
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint16 stor22;
uint256 stor23;
uint256 stor24;
address stor25;
address stor26;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 28
    stor2.length.field_8 = 'Decentralized Escrow Service' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'DES' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 8
    stor5 = 66666 * 10^18
    stor7 = 1514375999
    stor8 = 420156 * 3600
    stor9 = 420324 * 3600
    stor10 = 420492 * 3600
    stor11 = 1516967999
    stor12 = 0
    stor13 = 0
    stor14 = 0
    stor15 = 0
    stor16 = 0
    stor17 = 10 * 10^6
    stor18 = 12500000
    stor19 = 15 * 10^6
    stor20 = 17500000
    stor21 = 0
    stor22 = 0
    stor23 = 0
    stor24 = 0
    stor25 = 0
    stor26 = 0
    stor25 = code.data[7717 len 20]
    stor26 = code.data[7749 len 20]
    stor0[code.data[7717 len 20]] = 0
    stor0[stor26] = 0
    return code.data[617 len 7088]
}



// =====================  Runtime code  =====================


const TimeStart = (419988 * 3600)

const isToken = 1


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 hardCapEthereum;
mapping of uint8 stor6;
uint256 timeEnd;
uint256 timeWeekOne;
uint256 timeWeekTwo;
uint256 timeWeekThree;
uint256 timeTransferAllowed;
uint256 poolPreICO;
uint256 poolICO;
uint256 poolTeam;
uint256 poolAdvisors;
uint256 poolBounty;
uint256 priceWeekOne;
uint256 priceWeekTwo;
uint256 priceWeekThree;
uint256 priceWeekFour;
uint256 priceManual;
uint8 iCOPaused;
uint8 iCOFinished; offset 8
uint256 statsEthereumRaised;
uint256 statsTotalSupply;
address owner;
address walletAddress;

function name() {
    return name[0 len name.length]
}

function PoolICO() {
    return poolICO
}

function TimeWeekTwo() {
    return timeWeekTwo
}

function decimals() {
    return decimals
}

function PriceWeekOne() {
    return priceWeekOne
}

function StatsEthereumRaised() {
    return statsEthereumRaised
}

function PoolAdvisors() {
    return poolAdvisors
}

function PriceManual() {
    return priceManual
}

function wallet() {
    return walletAddress
}

function TimeEnd() {
    return timeEnd
}

function ICOFinished() {
    return bool(iCOFinished)
}

function noTransfer(address arg1) {
    return bool(stor6[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function PriceWeekThree() {
    return priceWeekThree
}

function HardCapEthereum() {
    return hardCapEthereum
}

function ICOPaused() {
    return bool(iCOPaused)
}

function TimeTransferAllowed() {
    return timeTransferAllowed
}

function PriceWeekTwo() {
    return priceWeekTwo
}

function StatsTotalSupply() {
    return statsTotalSupply
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function TimeWeekThree() {
    return timeWeekThree
}

function PoolTeam() {
    return poolTeam
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function PoolPreICO() {
    return poolPreICO
}

function PoolBounty() {
    return poolBounty
}

function TimeWeekOne() {
    return timeWeekOne
}

function PriceWeekFour() {
    return priceWeekFour
}

function EventEmergencyStop() {
    require owner == msg.sender
    iCOPaused = 1
}

function EventEmergencyContinue() {
    require owner == msg.sender
    iCOPaused = 0
}

function disallowTransfer(address arg1, bool arg2) {
    require owner == msg.sender
    stor6[address(arg1)] = uint8(arg2)
}

function changeOwner(address arg1) {
    require owner == msg.sender
    balanceOf[arg1] = balanceOf[stor25]
    balanceOf[stor25] = 0
    owner = arg1
}

function setTokenPrice(uint256 arg1) {
    require owner == msg.sender
    priceManual = arg1
    emit PriceChanged(Array(len=13, data='New price is '), arg1);
}

function changeWallet(address arg1) {
    require owner == msg.sender
    balanceOf[arg1] = balanceOf[stor26]
    balanceOf[stor26] = 0
    walletAddress = arg1
}

function setTimeEnd(uint256 arg1) {
    require owner == msg.sender
    timeEnd = arg1
    emit TimeEndChanged(Array(len=20, data='New ICO End Time is '), arg1);
}

function setTimeTransferAllowance(uint256 arg1) {
    require owner == msg.sender
    timeTransferAllowed = arg1
    emit TimeTransferAllowanceChanged(Array(len=35, data='Token transfers will be allowed ', 'at '), arg1);
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sendTeamTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require iCOFinished
    require arg2 > 0
    require arg2 >= poolTeam
    require balanceOf[stor25] >= poolTeam
    require arg2 <= balanceOf[stor25]
    balanceOf[stor25] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    require arg2 <= poolTeam
    poolTeam -= arg2
    emit 0xeff18d5a: arg2, arg1
    emit Transfer(arg2, owner, arg1);
    stor6[address(arg1)] = 1
}

function sendICOTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 > 0
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
    require arg2 + statsTotalSupply >= statsTotalSupply
    require arg2 + statsTotalSupply >= arg2
    statsTotalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
    require arg2 + poolICO >= poolICO
    require arg2 + poolICO >= arg2
    poolICO += arg2
}

function sendBountyTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require iCOFinished
    require arg2 > 0
    require arg2 >= poolBounty
    require balanceOf[stor25] >= poolBounty
    require arg2 <= balanceOf[stor25]
    balanceOf[stor25] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    require arg2 <= poolBounty
    poolBounty -= arg2
    emit 0xeff18d5a: arg2, arg1
    emit Transfer(arg2, owner, arg1);
    stor6[address(arg1)] = 1
}

function sendAdvisorsTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require iCOFinished
    require arg2 > 0
    require arg2 >= poolAdvisors
    require balanceOf[stor25] >= poolAdvisors
    require arg2 <= balanceOf[stor25]
    balanceOf[stor25] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    require arg2 <= poolAdvisors
    poolAdvisors -= arg2
    emit 0xeff18d5a: arg2, arg1
    emit Transfer(arg2, owner, arg1);
    stor6[address(arg1)] = 1
}

function sendPreICOTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 > 0
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
    require arg2 + statsTotalSupply >= statsTotalSupply
    require arg2 + statsTotalSupply >= arg2
    statsTotalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
    require arg2 + poolPreICO >= poolPreICO
    require arg2 + poolPreICO >= arg2
    poolPreICO += arg2
}

function transfer(address arg1, uint256 arg2) {
    require not iCOPaused
    if block.timestamp < timeTransferAllowed:
        require not stor6[address(msg.sender)]
    else:
        if stor6[address(msg.sender)]:
            stor6[address(msg.sender)] = 0
        if block.timestamp < timeTransferAllowed:
            require not stor6[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function price() {
    if priceManual > 0:
        return priceManual
    if block.timestamp < 419988 * 3600:
        if block.timestamp < timeWeekOne:
            if block.timestamp < timeWeekTwo:
                if block.timestamp < timeWeekThree:
                    return 0
                return priceWeekFour
        else:
            if block.timestamp < timeWeekTwo:
                return priceWeekTwo
    else:
        if block.timestamp < timeWeekOne:
            return priceWeekOne
        if block.timestamp < timeWeekTwo:
            return priceWeekTwo
    ('ge', 'timestamp', ('stor', ('name', 'timeWeekTwo', 9)))
    if block.timestamp >= timeWeekThree:
        return priceWeekFour
    return priceWeekThree
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not iCOPaused
    if block.timestamp < timeTransferAllowed:
        require not stor6[address(msg.sender)]
    else:
        if stor6[address(msg.sender)]:
            stor6[address(msg.sender)] = 0
        if block.timestamp < timeTransferAllowed:
            require not stor6[address(msg.sender)]
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function finishCrowdsale() {
    require owner == msg.sender
    if not iCOFinished:
        poolTeam = 15 * statsTotalSupply / 100
        poolAdvisors = 7 * statsTotalSupply / 100
        poolBounty = 3 * statsTotalSupply / 100
        require poolTeam >= 0
        require poolTeam >= poolTeam
        require poolAdvisors + poolTeam >= poolTeam
        require poolAdvisors + poolTeam >= poolAdvisors
        require poolBounty >= 0
        require poolBounty + poolAdvisors + poolTeam >= poolBounty
        require poolBounty + poolAdvisors + poolTeam > 0
        require poolBounty + poolAdvisors + poolTeam + balanceOf[stor25] >= balanceOf[stor25]
        require balanceOf[stor25] >= 0
        balanceOf[stor25] = poolBounty + poolAdvisors + poolTeam + balanceOf[stor25]
        require poolBounty + poolAdvisors + poolTeam + statsTotalSupply >= statsTotalSupply
        require statsTotalSupply >= 0
        statsTotalSupply = poolBounty + poolAdvisors + poolTeam + statsTotalSupply
        emit Transfer((poolBounty + poolAdvisors + poolTeam), 0, this.address);
        emit Transfer((poolBounty + poolAdvisors + poolTeam), this.address, owner);
        iCOFinished = 1
        return 0
    else:
        return 0
}

function _fallback() payable {
    require owner != msg.sender
    require walletAddress != msg.sender
    require not iCOPaused
    require not iCOFinished
    if priceManual > 0:
        require msg.value >= priceManual
    else:
        if block.timestamp < 419988 * 3600:
            if block.timestamp < timeWeekOne:
                if block.timestamp < timeWeekTwo:
                    if block.timestamp < timeWeekThree:
                        require msg.value >= 0
                    else:
                        require msg.value >= priceWeekFour
                else:
                    if block.timestamp >= timeWeekThree:
                        require msg.value >= priceWeekFour
                    else:
                        require msg.value >= priceWeekThree
            else:
                if block.timestamp < timeWeekTwo:
                    require msg.value >= priceWeekTwo
                else:
                    if block.timestamp >= timeWeekThree:
                        require msg.value >= priceWeekFour
                    else:
                        require msg.value >= priceWeekThree
        else:
            if block.timestamp < timeWeekOne:
                require msg.value >= priceWeekOne
            else:
                if block.timestamp < timeWeekTwo:
                    require msg.value >= priceWeekTwo
                else:
                    if block.timestamp >= timeWeekThree:
                        require msg.value >= priceWeekFour
                    else:
                        require msg.value >= priceWeekThree
    require block.timestamp >= 419988 * 3600
    require block.timestamp <= timeEnd
    if priceManual > 0:
        require priceManual
        require msg.value + statsEthereumRaised >= statsEthereumRaised
        require msg.value + statsEthereumRaised >= msg.value
        require msg.value + statsEthereumRaised <= hardCapEthereum
        require msg.value / priceManual > 0
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require (msg.value / priceManual) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require (msg.value / priceManual) + balanceOf[address(msg.sender)] >= msg.value / priceManual
        balanceOf[address(msg.sender)] += msg.value / priceManual
        require (msg.value / priceManual) + statsTotalSupply >= statsTotalSupply
        require (msg.value / priceManual) + statsTotalSupply >= msg.value / priceManual
        statsTotalSupply += msg.value / priceManual
        emit Transfer((msg.value / priceManual), 0, this.address);
        emit Transfer((msg.value / priceManual), this.address, msg.sender);
        require msg.value + statsEthereumRaised >= statsEthereumRaised
        require msg.value + statsEthereumRaised >= msg.value
        statsEthereumRaised += msg.value
        require (msg.value / priceManual) + poolICO >= poolICO
        require (msg.value / priceManual) + poolICO >= msg.value / priceManual
        poolICO += msg.value / priceManual
        emit Buy(msg.value, msg.value / priceManual, msg.sender);
        emit 0xeff18d5a: (msg.value / priceManual), msg.sender
    else:
        if block.timestamp < 419988 * 3600:
            if block.timestamp < timeWeekOne:
                if block.timestamp < timeWeekTwo:
                    require block.timestamp >= timeWeekThree
                    require priceWeekFour
                    require msg.value + statsEthereumRaised >= statsEthereumRaised
                    require msg.value + statsEthereumRaised >= msg.value
                    require msg.value + statsEthereumRaised <= hardCapEthereum
                    require msg.value / priceWeekFour > 0
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (msg.value / priceWeekFour) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require (msg.value / priceWeekFour) + balanceOf[address(msg.sender)] >= msg.value / priceWeekFour
                    balanceOf[address(msg.sender)] += msg.value / priceWeekFour
                    require (msg.value / priceWeekFour) + statsTotalSupply >= statsTotalSupply
                    require (msg.value / priceWeekFour) + statsTotalSupply >= msg.value / priceWeekFour
                    statsTotalSupply += msg.value / priceWeekFour
                    emit Transfer((msg.value / priceWeekFour), 0, this.address);
                    emit Transfer((msg.value / priceWeekFour), this.address, msg.sender);
                    require msg.value + statsEthereumRaised >= statsEthereumRaised
                    require msg.value + statsEthereumRaised >= msg.value
                    statsEthereumRaised += msg.value
                    require (msg.value / priceWeekFour) + poolICO >= poolICO
                    require (msg.value / priceWeekFour) + poolICO >= msg.value / priceWeekFour
                    poolICO += msg.value / priceWeekFour
                    emit Buy(msg.value, msg.value / priceWeekFour, msg.sender);
                    emit 0xeff18d5a: (msg.value / priceWeekFour), msg.sender
                else:
                    if block.timestamp >= timeWeekThree:
                        require priceWeekFour
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        require msg.value + statsEthereumRaised <= hardCapEthereum
                        require msg.value / priceWeekFour > 0
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (msg.value / priceWeekFour) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        require (msg.value / priceWeekFour) + balanceOf[address(msg.sender)] >= msg.value / priceWeekFour
                        balanceOf[address(msg.sender)] += msg.value / priceWeekFour
                        require (msg.value / priceWeekFour) + statsTotalSupply >= statsTotalSupply
                        require (msg.value / priceWeekFour) + statsTotalSupply >= msg.value / priceWeekFour
                        statsTotalSupply += msg.value / priceWeekFour
                        emit Transfer((msg.value / priceWeekFour), 0, this.address);
                        emit Transfer((msg.value / priceWeekFour), this.address, msg.sender);
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        statsEthereumRaised += msg.value
                        require (msg.value / priceWeekFour) + poolICO >= poolICO
                        require (msg.value / priceWeekFour) + poolICO >= msg.value / priceWeekFour
                        poolICO += msg.value / priceWeekFour
                        emit Buy(msg.value, msg.value / priceWeekFour, msg.sender);
                        emit 0xeff18d5a: (msg.value / priceWeekFour), msg.sender
                    else:
                        require priceWeekThree
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        require msg.value + statsEthereumRaised <= hardCapEthereum
                        require msg.value / priceWeekThree > 0
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (msg.value / priceWeekThree) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        require (msg.value / priceWeekThree) + balanceOf[address(msg.sender)] >= msg.value / priceWeekThree
                        balanceOf[address(msg.sender)] += msg.value / priceWeekThree
                        require (msg.value / priceWeekThree) + statsTotalSupply >= statsTotalSupply
                        require (msg.value / priceWeekThree) + statsTotalSupply >= msg.value / priceWeekThree
                        statsTotalSupply += msg.value / priceWeekThree
                        emit Transfer((msg.value / priceWeekThree), 0, this.address);
                        emit Transfer((msg.value / priceWeekThree), this.address, msg.sender);
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        statsEthereumRaised += msg.value
                        require (msg.value / priceWeekThree) + poolICO >= poolICO
                        require (msg.value / priceWeekThree) + poolICO >= msg.value / priceWeekThree
                        poolICO += msg.value / priceWeekThree
                        emit Buy(msg.value, msg.value / priceWeekThree, msg.sender);
                        emit 0xeff18d5a: (msg.value / priceWeekThree), msg.sender
            else:
                if block.timestamp < timeWeekTwo:
                    require priceWeekTwo
                    require msg.value + statsEthereumRaised >= statsEthereumRaised
                    require msg.value + statsEthereumRaised >= msg.value
                    require msg.value + statsEthereumRaised <= hardCapEthereum
                    require msg.value / priceWeekTwo > 0
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (msg.value / priceWeekTwo) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require (msg.value / priceWeekTwo) + balanceOf[address(msg.sender)] >= msg.value / priceWeekTwo
                    balanceOf[address(msg.sender)] += msg.value / priceWeekTwo
                    require (msg.value / priceWeekTwo) + statsTotalSupply >= statsTotalSupply
                    require (msg.value / priceWeekTwo) + statsTotalSupply >= msg.value / priceWeekTwo
                    statsTotalSupply += msg.value / priceWeekTwo
                    emit Transfer((msg.value / priceWeekTwo), 0, this.address);
                    emit Transfer((msg.value / priceWeekTwo), this.address, msg.sender);
                    require msg.value + statsEthereumRaised >= statsEthereumRaised
                    require msg.value + statsEthereumRaised >= msg.value
                    statsEthereumRaised += msg.value
                    require (msg.value / priceWeekTwo) + poolICO >= poolICO
                    require (msg.value / priceWeekTwo) + poolICO >= msg.value / priceWeekTwo
                    poolICO += msg.value / priceWeekTwo
                    emit Buy(msg.value, msg.value / priceWeekTwo, msg.sender);
                    emit 0xeff18d5a: (msg.value / priceWeekTwo), msg.sender
                else:
                    if block.timestamp >= timeWeekThree:
                        require priceWeekFour
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        require msg.value + statsEthereumRaised <= hardCapEthereum
                        require msg.value / priceWeekFour > 0
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (msg.value / priceWeekFour) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        require (msg.value / priceWeekFour) + balanceOf[address(msg.sender)] >= msg.value / priceWeekFour
                        balanceOf[address(msg.sender)] += msg.value / priceWeekFour
                        require (msg.value / priceWeekFour) + statsTotalSupply >= statsTotalSupply
                        require (msg.value / priceWeekFour) + statsTotalSupply >= msg.value / priceWeekFour
                        statsTotalSupply += msg.value / priceWeekFour
                        emit Transfer((msg.value / priceWeekFour), 0, this.address);
                        emit Transfer((msg.value / priceWeekFour), this.address, msg.sender);
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        statsEthereumRaised += msg.value
                        require (msg.value / priceWeekFour) + poolICO >= poolICO
                        require (msg.value / priceWeekFour) + poolICO >= msg.value / priceWeekFour
                        poolICO += msg.value / priceWeekFour
                        emit Buy(msg.value, msg.value / priceWeekFour, msg.sender);
                        emit 0xeff18d5a: (msg.value / priceWeekFour), msg.sender
                    else:
                        require priceWeekThree
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        require msg.value + statsEthereumRaised <= hardCapEthereum
                        require msg.value / priceWeekThree > 0
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (msg.value / priceWeekThree) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        require (msg.value / priceWeekThree) + balanceOf[address(msg.sender)] >= msg.value / priceWeekThree
                        balanceOf[address(msg.sender)] += msg.value / priceWeekThree
                        require (msg.value / priceWeekThree) + statsTotalSupply >= statsTotalSupply
                        require (msg.value / priceWeekThree) + statsTotalSupply >= msg.value / priceWeekThree
                        statsTotalSupply += msg.value / priceWeekThree
                        emit Transfer((msg.value / priceWeekThree), 0, this.address);
                        emit Transfer((msg.value / priceWeekThree), this.address, msg.sender);
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        statsEthereumRaised += msg.value
                        require (msg.value / priceWeekThree) + poolICO >= poolICO
                        require (msg.value / priceWeekThree) + poolICO >= msg.value / priceWeekThree
                        poolICO += msg.value / priceWeekThree
                        emit Buy(msg.value, msg.value / priceWeekThree, msg.sender);
                        emit 0xeff18d5a: (msg.value / priceWeekThree), msg.sender
        else:
            if block.timestamp < timeWeekOne:
                require priceWeekOne
                require msg.value + statsEthereumRaised >= statsEthereumRaised
                require msg.value + statsEthereumRaised >= msg.value
                require msg.value + statsEthereumRaised <= hardCapEthereum
                require msg.value / priceWeekOne > 0
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require (msg.value / priceWeekOne) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require (msg.value / priceWeekOne) + balanceOf[address(msg.sender)] >= msg.value / priceWeekOne
                balanceOf[address(msg.sender)] += msg.value / priceWeekOne
                require (msg.value / priceWeekOne) + statsTotalSupply >= statsTotalSupply
                require (msg.value / priceWeekOne) + statsTotalSupply >= msg.value / priceWeekOne
                statsTotalSupply += msg.value / priceWeekOne
                emit Transfer((msg.value / priceWeekOne), 0, this.address);
                emit Transfer((msg.value / priceWeekOne), this.address, msg.sender);
                require msg.value + statsEthereumRaised >= statsEthereumRaised
                require msg.value + statsEthereumRaised >= msg.value
                statsEthereumRaised += msg.value
                require (msg.value / priceWeekOne) + poolICO >= poolICO
                require (msg.value / priceWeekOne) + poolICO >= msg.value / priceWeekOne
                poolICO += msg.value / priceWeekOne
                emit Buy(msg.value, msg.value / priceWeekOne, msg.sender);
                emit 0xeff18d5a: (msg.value / priceWeekOne), msg.sender
            else:
                if block.timestamp < timeWeekTwo:
                    require priceWeekTwo
                    require msg.value + statsEthereumRaised >= statsEthereumRaised
                    require msg.value + statsEthereumRaised >= msg.value
                    require msg.value + statsEthereumRaised <= hardCapEthereum
                    require msg.value / priceWeekTwo > 0
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (msg.value / priceWeekTwo) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require (msg.value / priceWeekTwo) + balanceOf[address(msg.sender)] >= msg.value / priceWeekTwo
                    balanceOf[address(msg.sender)] += msg.value / priceWeekTwo
                    require (msg.value / priceWeekTwo) + statsTotalSupply >= statsTotalSupply
                    require (msg.value / priceWeekTwo) + statsTotalSupply >= msg.value / priceWeekTwo
                    statsTotalSupply += msg.value / priceWeekTwo
                    emit Transfer((msg.value / priceWeekTwo), 0, this.address);
                    emit Transfer((msg.value / priceWeekTwo), this.address, msg.sender);
                    require msg.value + statsEthereumRaised >= statsEthereumRaised
                    require msg.value + statsEthereumRaised >= msg.value
                    statsEthereumRaised += msg.value
                    require (msg.value / priceWeekTwo) + poolICO >= poolICO
                    require (msg.value / priceWeekTwo) + poolICO >= msg.value / priceWeekTwo
                    poolICO += msg.value / priceWeekTwo
                    emit Buy(msg.value, msg.value / priceWeekTwo, msg.sender);
                    emit 0xeff18d5a: (msg.value / priceWeekTwo), msg.sender
                else:
                    if block.timestamp >= timeWeekThree:
                        require priceWeekFour
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        require msg.value + statsEthereumRaised <= hardCapEthereum
                        require msg.value / priceWeekFour > 0
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (msg.value / priceWeekFour) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        require (msg.value / priceWeekFour) + balanceOf[address(msg.sender)] >= msg.value / priceWeekFour
                        balanceOf[address(msg.sender)] += msg.value / priceWeekFour
                        require (msg.value / priceWeekFour) + statsTotalSupply >= statsTotalSupply
                        require (msg.value / priceWeekFour) + statsTotalSupply >= msg.value / priceWeekFour
                        statsTotalSupply += msg.value / priceWeekFour
                        emit Transfer((msg.value / priceWeekFour), 0, this.address);
                        emit Transfer((msg.value / priceWeekFour), this.address, msg.sender);
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        statsEthereumRaised += msg.value
                        require (msg.value / priceWeekFour) + poolICO >= poolICO
                        require (msg.value / priceWeekFour) + poolICO >= msg.value / priceWeekFour
                        poolICO += msg.value / priceWeekFour
                        emit Buy(msg.value, msg.value / priceWeekFour, msg.sender);
                        emit 0xeff18d5a: (msg.value / priceWeekFour), msg.sender
                    else:
                        require priceWeekThree
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        require msg.value + statsEthereumRaised <= hardCapEthereum
                        require msg.value / priceWeekThree > 0
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (msg.value / priceWeekThree) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        require (msg.value / priceWeekThree) + balanceOf[address(msg.sender)] >= msg.value / priceWeekThree
                        balanceOf[address(msg.sender)] += msg.value / priceWeekThree
                        require (msg.value / priceWeekThree) + statsTotalSupply >= statsTotalSupply
                        require (msg.value / priceWeekThree) + statsTotalSupply >= msg.value / priceWeekThree
                        statsTotalSupply += msg.value / priceWeekThree
                        emit Transfer((msg.value / priceWeekThree), 0, this.address);
                        emit Transfer((msg.value / priceWeekThree), this.address, msg.sender);
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        statsEthereumRaised += msg.value
                        require (msg.value / priceWeekThree) + poolICO >= poolICO
                        require (msg.value / priceWeekThree) + poolICO >= msg.value / priceWeekThree
                        poolICO += msg.value / priceWeekThree
                        emit Buy(msg.value, msg.value / priceWeekThree, msg.sender);
                        emit 0xeff18d5a: (msg.value / priceWeekThree), msg.sender
    emit ContributionReceived(msg.value, msg.sender);
}

function buy() payable {
    require owner != msg.sender
    require walletAddress != msg.sender
    require not iCOPaused
    require not iCOFinished
    if priceManual > 0:
        require msg.value >= priceManual
    else:
        if block.timestamp < 419988 * 3600:
            if block.timestamp < timeWeekOne:
                if block.timestamp < timeWeekTwo:
                    if block.timestamp < timeWeekThree:
                        require msg.value >= 0
                    else:
                        require msg.value >= priceWeekFour
                else:
                    if block.timestamp >= timeWeekThree:
                        require msg.value >= priceWeekFour
                    else:
                        require msg.value >= priceWeekThree
            else:
                if block.timestamp < timeWeekTwo:
                    require msg.value >= priceWeekTwo
                else:
                    if block.timestamp >= timeWeekThree:
                        require msg.value >= priceWeekFour
                    else:
                        require msg.value >= priceWeekThree
        else:
            if block.timestamp < timeWeekOne:
                require msg.value >= priceWeekOne
            else:
                if block.timestamp < timeWeekTwo:
                    require msg.value >= priceWeekTwo
                else:
                    if block.timestamp >= timeWeekThree:
                        require msg.value >= priceWeekFour
                    else:
                        require msg.value >= priceWeekThree
    require block.timestamp >= 419988 * 3600
    require block.timestamp <= timeEnd
    if priceManual > 0:
        require priceManual
        require msg.value + statsEthereumRaised >= statsEthereumRaised
        require msg.value + statsEthereumRaised >= msg.value
        require msg.value + statsEthereumRaised <= hardCapEthereum
        require msg.value / priceManual > 0
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require (msg.value / priceManual) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require (msg.value / priceManual) + balanceOf[address(msg.sender)] >= msg.value / priceManual
        balanceOf[address(msg.sender)] += msg.value / priceManual
        require (msg.value / priceManual) + statsTotalSupply >= statsTotalSupply
        require (msg.value / priceManual) + statsTotalSupply >= msg.value / priceManual
        statsTotalSupply += msg.value / priceManual
        emit Transfer((msg.value / priceManual), 0, this.address);
        emit Transfer((msg.value / priceManual), this.address, msg.sender);
        require msg.value + statsEthereumRaised >= statsEthereumRaised
        require msg.value + statsEthereumRaised >= msg.value
        statsEthereumRaised += msg.value
        require (msg.value / priceManual) + poolICO >= poolICO
        require (msg.value / priceManual) + poolICO >= msg.value / priceManual
        poolICO += msg.value / priceManual
        emit Buy(msg.value, msg.value / priceManual, msg.sender);
        emit 0xeff18d5a: (msg.value / priceManual), msg.sender
    else:
        if block.timestamp < 419988 * 3600:
            if block.timestamp < timeWeekOne:
                if block.timestamp < timeWeekTwo:
                    require block.timestamp >= timeWeekThree
                    require priceWeekFour
                    require msg.value + statsEthereumRaised >= statsEthereumRaised
                    require msg.value + statsEthereumRaised >= msg.value
                    require msg.value + statsEthereumRaised <= hardCapEthereum
                    require msg.value / priceWeekFour > 0
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (msg.value / priceWeekFour) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require (msg.value / priceWeekFour) + balanceOf[address(msg.sender)] >= msg.value / priceWeekFour
                    balanceOf[address(msg.sender)] += msg.value / priceWeekFour
                    require (msg.value / priceWeekFour) + statsTotalSupply >= statsTotalSupply
                    require (msg.value / priceWeekFour) + statsTotalSupply >= msg.value / priceWeekFour
                    statsTotalSupply += msg.value / priceWeekFour
                    emit Transfer((msg.value / priceWeekFour), 0, this.address);
                    emit Transfer((msg.value / priceWeekFour), this.address, msg.sender);
                    require msg.value + statsEthereumRaised >= statsEthereumRaised
                    require msg.value + statsEthereumRaised >= msg.value
                    statsEthereumRaised += msg.value
                    require (msg.value / priceWeekFour) + poolICO >= poolICO
                    require (msg.value / priceWeekFour) + poolICO >= msg.value / priceWeekFour
                    poolICO += msg.value / priceWeekFour
                    emit Buy(msg.value, msg.value / priceWeekFour, msg.sender);
                    emit 0xeff18d5a: (msg.value / priceWeekFour), msg.sender
                else:
                    if block.timestamp >= timeWeekThree:
                        require priceWeekFour
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        require msg.value + statsEthereumRaised <= hardCapEthereum
                        require msg.value / priceWeekFour > 0
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (msg.value / priceWeekFour) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        require (msg.value / priceWeekFour) + balanceOf[address(msg.sender)] >= msg.value / priceWeekFour
                        balanceOf[address(msg.sender)] += msg.value / priceWeekFour
                        require (msg.value / priceWeekFour) + statsTotalSupply >= statsTotalSupply
                        require (msg.value / priceWeekFour) + statsTotalSupply >= msg.value / priceWeekFour
                        statsTotalSupply += msg.value / priceWeekFour
                        emit Transfer((msg.value / priceWeekFour), 0, this.address);
                        emit Transfer((msg.value / priceWeekFour), this.address, msg.sender);
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        statsEthereumRaised += msg.value
                        require (msg.value / priceWeekFour) + poolICO >= poolICO
                        require (msg.value / priceWeekFour) + poolICO >= msg.value / priceWeekFour
                        poolICO += msg.value / priceWeekFour
                        emit Buy(msg.value, msg.value / priceWeekFour, msg.sender);
                        emit 0xeff18d5a: (msg.value / priceWeekFour), msg.sender
                    else:
                        require priceWeekThree
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        require msg.value + statsEthereumRaised <= hardCapEthereum
                        require msg.value / priceWeekThree > 0
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (msg.value / priceWeekThree) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        require (msg.value / priceWeekThree) + balanceOf[address(msg.sender)] >= msg.value / priceWeekThree
                        balanceOf[address(msg.sender)] += msg.value / priceWeekThree
                        require (msg.value / priceWeekThree) + statsTotalSupply >= statsTotalSupply
                        require (msg.value / priceWeekThree) + statsTotalSupply >= msg.value / priceWeekThree
                        statsTotalSupply += msg.value / priceWeekThree
                        emit Transfer((msg.value / priceWeekThree), 0, this.address);
                        emit Transfer((msg.value / priceWeekThree), this.address, msg.sender);
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        statsEthereumRaised += msg.value
                        require (msg.value / priceWeekThree) + poolICO >= poolICO
                        require (msg.value / priceWeekThree) + poolICO >= msg.value / priceWeekThree
                        poolICO += msg.value / priceWeekThree
                        emit Buy(msg.value, msg.value / priceWeekThree, msg.sender);
                        emit 0xeff18d5a: (msg.value / priceWeekThree), msg.sender
            else:
                if block.timestamp < timeWeekTwo:
                    require priceWeekTwo
                    require msg.value + statsEthereumRaised >= statsEthereumRaised
                    require msg.value + statsEthereumRaised >= msg.value
                    require msg.value + statsEthereumRaised <= hardCapEthereum
                    require msg.value / priceWeekTwo > 0
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (msg.value / priceWeekTwo) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require (msg.value / priceWeekTwo) + balanceOf[address(msg.sender)] >= msg.value / priceWeekTwo
                    balanceOf[address(msg.sender)] += msg.value / priceWeekTwo
                    require (msg.value / priceWeekTwo) + statsTotalSupply >= statsTotalSupply
                    require (msg.value / priceWeekTwo) + statsTotalSupply >= msg.value / priceWeekTwo
                    statsTotalSupply += msg.value / priceWeekTwo
                    emit Transfer((msg.value / priceWeekTwo), 0, this.address);
                    emit Transfer((msg.value / priceWeekTwo), this.address, msg.sender);
                    require msg.value + statsEthereumRaised >= statsEthereumRaised
                    require msg.value + statsEthereumRaised >= msg.value
                    statsEthereumRaised += msg.value
                    require (msg.value / priceWeekTwo) + poolICO >= poolICO
                    require (msg.value / priceWeekTwo) + poolICO >= msg.value / priceWeekTwo
                    poolICO += msg.value / priceWeekTwo
                    emit Buy(msg.value, msg.value / priceWeekTwo, msg.sender);
                    emit 0xeff18d5a: (msg.value / priceWeekTwo), msg.sender
                else:
                    if block.timestamp >= timeWeekThree:
                        require priceWeekFour
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        require msg.value + statsEthereumRaised <= hardCapEthereum
                        require msg.value / priceWeekFour > 0
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (msg.value / priceWeekFour) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        require (msg.value / priceWeekFour) + balanceOf[address(msg.sender)] >= msg.value / priceWeekFour
                        balanceOf[address(msg.sender)] += msg.value / priceWeekFour
                        require (msg.value / priceWeekFour) + statsTotalSupply >= statsTotalSupply
                        require (msg.value / priceWeekFour) + statsTotalSupply >= msg.value / priceWeekFour
                        statsTotalSupply += msg.value / priceWeekFour
                        emit Transfer((msg.value / priceWeekFour), 0, this.address);
                        emit Transfer((msg.value / priceWeekFour), this.address, msg.sender);
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        statsEthereumRaised += msg.value
                        require (msg.value / priceWeekFour) + poolICO >= poolICO
                        require (msg.value / priceWeekFour) + poolICO >= msg.value / priceWeekFour
                        poolICO += msg.value / priceWeekFour
                        emit Buy(msg.value, msg.value / priceWeekFour, msg.sender);
                        emit 0xeff18d5a: (msg.value / priceWeekFour), msg.sender
                    else:
                        require priceWeekThree
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        require msg.value + statsEthereumRaised <= hardCapEthereum
                        require msg.value / priceWeekThree > 0
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (msg.value / priceWeekThree) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        require (msg.value / priceWeekThree) + balanceOf[address(msg.sender)] >= msg.value / priceWeekThree
                        balanceOf[address(msg.sender)] += msg.value / priceWeekThree
                        require (msg.value / priceWeekThree) + statsTotalSupply >= statsTotalSupply
                        require (msg.value / priceWeekThree) + statsTotalSupply >= msg.value / priceWeekThree
                        statsTotalSupply += msg.value / priceWeekThree
                        emit Transfer((msg.value / priceWeekThree), 0, this.address);
                        emit Transfer((msg.value / priceWeekThree), this.address, msg.sender);
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        statsEthereumRaised += msg.value
                        require (msg.value / priceWeekThree) + poolICO >= poolICO
                        require (msg.value / priceWeekThree) + poolICO >= msg.value / priceWeekThree
                        poolICO += msg.value / priceWeekThree
                        emit Buy(msg.value, msg.value / priceWeekThree, msg.sender);
                        emit 0xeff18d5a: (msg.value / priceWeekThree), msg.sender
        else:
            if block.timestamp < timeWeekOne:
                require priceWeekOne
                require msg.value + statsEthereumRaised >= statsEthereumRaised
                require msg.value + statsEthereumRaised >= msg.value
                require msg.value + statsEthereumRaised <= hardCapEthereum
                require msg.value / priceWeekOne > 0
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require (msg.value / priceWeekOne) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require (msg.value / priceWeekOne) + balanceOf[address(msg.sender)] >= msg.value / priceWeekOne
                balanceOf[address(msg.sender)] += msg.value / priceWeekOne
                require (msg.value / priceWeekOne) + statsTotalSupply >= statsTotalSupply
                require (msg.value / priceWeekOne) + statsTotalSupply >= msg.value / priceWeekOne
                statsTotalSupply += msg.value / priceWeekOne
                emit Transfer((msg.value / priceWeekOne), 0, this.address);
                emit Transfer((msg.value / priceWeekOne), this.address, msg.sender);
                require msg.value + statsEthereumRaised >= statsEthereumRaised
                require msg.value + statsEthereumRaised >= msg.value
                statsEthereumRaised += msg.value
                require (msg.value / priceWeekOne) + poolICO >= poolICO
                require (msg.value / priceWeekOne) + poolICO >= msg.value / priceWeekOne
                poolICO += msg.value / priceWeekOne
                emit Buy(msg.value, msg.value / priceWeekOne, msg.sender);
                emit 0xeff18d5a: (msg.value / priceWeekOne), msg.sender
            else:
                if block.timestamp < timeWeekTwo:
                    require priceWeekTwo
                    require msg.value + statsEthereumRaised >= statsEthereumRaised
                    require msg.value + statsEthereumRaised >= msg.value
                    require msg.value + statsEthereumRaised <= hardCapEthereum
                    require msg.value / priceWeekTwo > 0
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (msg.value / priceWeekTwo) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require (msg.value / priceWeekTwo) + balanceOf[address(msg.sender)] >= msg.value / priceWeekTwo
                    balanceOf[address(msg.sender)] += msg.value / priceWeekTwo
                    require (msg.value / priceWeekTwo) + statsTotalSupply >= statsTotalSupply
                    require (msg.value / priceWeekTwo) + statsTotalSupply >= msg.value / priceWeekTwo
                    statsTotalSupply += msg.value / priceWeekTwo
                    emit Transfer((msg.value / priceWeekTwo), 0, this.address);
                    emit Transfer((msg.value / priceWeekTwo), this.address, msg.sender);
                    require msg.value + statsEthereumRaised >= statsEthereumRaised
                    require msg.value + statsEthereumRaised >= msg.value
                    statsEthereumRaised += msg.value
                    require (msg.value / priceWeekTwo) + poolICO >= poolICO
                    require (msg.value / priceWeekTwo) + poolICO >= msg.value / priceWeekTwo
                    poolICO += msg.value / priceWeekTwo
                    emit Buy(msg.value, msg.value / priceWeekTwo, msg.sender);
                    emit 0xeff18d5a: (msg.value / priceWeekTwo), msg.sender
                else:
                    if block.timestamp >= timeWeekThree:
                        require priceWeekFour
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        require msg.value + statsEthereumRaised <= hardCapEthereum
                        require msg.value / priceWeekFour > 0
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (msg.value / priceWeekFour) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        require (msg.value / priceWeekFour) + balanceOf[address(msg.sender)] >= msg.value / priceWeekFour
                        balanceOf[address(msg.sender)] += msg.value / priceWeekFour
                        require (msg.value / priceWeekFour) + statsTotalSupply >= statsTotalSupply
                        require (msg.value / priceWeekFour) + statsTotalSupply >= msg.value / priceWeekFour
                        statsTotalSupply += msg.value / priceWeekFour
                        emit Transfer((msg.value / priceWeekFour), 0, this.address);
                        emit Transfer((msg.value / priceWeekFour), this.address, msg.sender);
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        statsEthereumRaised += msg.value
                        require (msg.value / priceWeekFour) + poolICO >= poolICO
                        require (msg.value / priceWeekFour) + poolICO >= msg.value / priceWeekFour
                        poolICO += msg.value / priceWeekFour
                        emit Buy(msg.value, msg.value / priceWeekFour, msg.sender);
                        emit 0xeff18d5a: (msg.value / priceWeekFour), msg.sender
                    else:
                        require priceWeekThree
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        require msg.value + statsEthereumRaised <= hardCapEthereum
                        require msg.value / priceWeekThree > 0
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (msg.value / priceWeekThree) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        require (msg.value / priceWeekThree) + balanceOf[address(msg.sender)] >= msg.value / priceWeekThree
                        balanceOf[address(msg.sender)] += msg.value / priceWeekThree
                        require (msg.value / priceWeekThree) + statsTotalSupply >= statsTotalSupply
                        require (msg.value / priceWeekThree) + statsTotalSupply >= msg.value / priceWeekThree
                        statsTotalSupply += msg.value / priceWeekThree
                        emit Transfer((msg.value / priceWeekThree), 0, this.address);
                        emit Transfer((msg.value / priceWeekThree), this.address, msg.sender);
                        require msg.value + statsEthereumRaised >= statsEthereumRaised
                        require msg.value + statsEthereumRaised >= msg.value
                        statsEthereumRaised += msg.value
                        require (msg.value / priceWeekThree) + poolICO >= poolICO
                        require (msg.value / priceWeekThree) + poolICO >= msg.value / priceWeekThree
                        poolICO += msg.value / priceWeekThree
                        emit Buy(msg.value, msg.value / priceWeekThree, msg.sender);
                        emit 0xeff18d5a: (msg.value / priceWeekThree), msg.sender
    emit ContributionReceived(msg.value, msg.sender);
    return 1
}



}
