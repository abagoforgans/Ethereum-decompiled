contract main {




// =====================  Runtime code  =====================


const decimals = 18

const totalEthereumBalance = eth.balance(this.address)


array of uint256 name;
array of uint256 symbol;
uint256 stakingRequirement;
mapping of uint256 balanceOf;
mapping of address stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of uint8 stor7;
uint256 totalSupply;
uint256 stor9;
mapping of uint8 stor10;
uint8 stor11;
address owner; offset 16

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function stakingRequirement() {
    return stakingRequirement
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function myTokens() {
    return balanceOf[address(msg.sender)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function disableWhitelist() {
    require msg.sender == owner
    stor11 = 0
}

function setAdministrator(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setStakingRequirement(uint256 arg1) {
    require msg.sender == owner
    stakingRequirement = arg1
}

function setName(string arg1) {
    require msg.sender == owner
    name[] = Array(len=arg1.length, data=arg1[all])
}

function setSymbol(string arg1) {
    require msg.sender == owner
    symbol[] = Array(len=arg1.length, data=arg1[all])
}

function dividendsOf(address arg1) {
    return (Mask(192, 64, (stor9 * balanceOf[address(arg1)]) - stor6[address(arg1)]) >> 64)
}

function redistribution() payable {
    require totalSupply
    require stor9 + (msg.value << 64 / totalSupply) >= stor9
    stor9 += msg.value << 64 / totalSupply
    emit OnRedistribution(msg.value, block.timestamp);
}

function myDividends(bool arg1) {
    if arg1:
        return ((Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)])
    return (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64)
}

function sub_2ab1772f(?) {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_c435403d(?) {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function withdraw() {
    require (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0
    stor6[address(msg.sender)] += Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)])
    stor5[address(msg.sender)] = 0
    emit onWithdraw(((Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]), msg.sender);
}

function sellPrice() {
    if not totalSupply:
        return (25 * 10^6 * 3600)
    require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
    require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 15 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
    return (((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) - ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 15))
}

function buyPrice() {
    if not totalSupply:
        return 11 * 10^10
    require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
    require ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 15) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
    return (((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 15))
}

function calculateEthereumReceived(uint256 arg1) {
    require arg1 <= totalSupply
    require 10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1)
    require (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 15 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
    return (((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 15))
}

function calculateTokensReceived(uint256 arg1) {
    require arg1 / 15 <= arg1
    s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * arg1 / 15) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
    t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * arg1 / 15) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
    while s < t:
        require s
        s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * arg1 / 15) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
        t = s
        continue 
    if 100000000000 * 10^18 <= t:
        return ((t - 100000000000 * 10^18 / 10^10) - totalSupply)
    revert
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] > 0
    require arg2 <= balanceOf[address(msg.sender)]
    if (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0:
        require (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0
        stor6[address(msg.sender)] += Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)])
        stor5[address(msg.sender)] = 0
        emit onWithdraw(((Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]), msg.sender);
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    stor6[address(msg.sender)] += -1 * stor9 * arg2
    stor6[address(arg1)] += stor9 * arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if not stor10[address(msg.sender)]:
        require bool(stor11) != 1
    require 15 * msg.value / 100 / 2 <= 15 * msg.value / 100
    require 15 * msg.value / 100 <= msg.value
    s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 15 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
    t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 15 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
    while s < t:
        require s
        s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 15 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
        t = s
        continue 
    require 100000000000 * 10^18 <= t
    require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
    require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
    require t - 100000000000 * 10^18 / 10^10 > totalSupply
    require 15 * msg.value / 100 >= (15 * msg.value / 100) - (15 * msg.value / 100 / 2)
    if totalSupply <= 0:
        totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
        require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (15 * msg.value / 100 << 64)
    else:
        require t - 100000000000 * 10^18 / 10^10 >= totalSupply
        totalSupply = t - 100000000000 * 10^18 / 10^10
        require totalSupply
        stor9 += 15 * msg.value / 100 << 64 / totalSupply
        require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * 15 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 15 * msg.value / 100 << 64 / totalSupply)
    stor7[address(msg.sender)] = 1
    emit onTokenPurchase(msg.value, (t - 100000000000 * 10^18 / 10^10) - totalSupply, msg.sender, 0);
}

function reinvest() {
    require (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0
    stor6[address(msg.sender)] += Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)])
    stor5[address(msg.sender)] = 0
    if not stor10[address(msg.sender)]:
        require bool(stor11) != 1
    require (15 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (15 * stor5[address(msg.sender)]) / 100 / 2 <= (15 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (15 * stor5[address(msg.sender)]) / 100
    require (15 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (15 * stor5[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
    s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (15 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (15 * stor5[address(msg.sender)]) / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
    t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (15 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (15 * stor5[address(msg.sender)]) / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
    while s < t:
        require s
        s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (15 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (15 * stor5[address(msg.sender)]) / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
        t = s
        continue 
    require 100000000000 * 10^18 <= t
    require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
    require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
    require t - 100000000000 * 10^18 / 10^10 > totalSupply
    require (15 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (15 * stor5[address(msg.sender)]) / 100 >= ((15 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (15 * stor5[address(msg.sender)]) / 100) - ((15 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (15 * stor5[address(msg.sender)]) / 100 / 2)
    if totalSupply <= 0:
        totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
        require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - ((15 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (15 * stor5[address(msg.sender)]) / 100 << 64)
    else:
        require t - 100000000000 * 10^18 / 10^10 >= totalSupply
        totalSupply = t - 100000000000 * 10^18 / 10^10
        require totalSupply
        stor9 += (15 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (15 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply
        require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * (15 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (15 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (15 * Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + (15 * stor5[address(msg.sender)]) / 100 << 64 / totalSupply)
    stor7[address(msg.sender)] = 1
    emit onTokenPurchase((Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)], (t - 100000000000 * 10^18 / 10^10) - totalSupply, msg.sender, 0);
    emit onReinvestment((Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)], (t - 100000000000 * 10^18 / 10^10) - totalSupply, msg.sender);
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require 10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1)
    require 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 <= 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100
    require (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
    if not stor4[address(msg.sender)]:
        require 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 >= (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2)
        require arg1 <= totalSupply
        totalSupply -= arg1
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
        stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor9 * arg1) - (((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) + (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) << 64)
        if totalSupply > 0:
            require totalSupply
            require stor9 + (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply) >= stor9
            stor9 += 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply
    else:
        if stor4[address(msg.sender)] == msg.sender:
            require 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 >= (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2)
            require arg1 <= totalSupply
            totalSupply -= arg1
            require arg1 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg1
            stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor9 * arg1) - (((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) + (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) << 64)
            if totalSupply > 0:
                require totalSupply
                require stor9 + (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply) >= stor9
                stor9 += 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply
        else:
            if balanceOf[stor4[address(msg.sender)]] < stakingRequirement:
                require 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 >= (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2)
                require arg1 <= totalSupply
                totalSupply -= arg1
                require arg1 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg1
                stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor9 * arg1) - (((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) + (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor9 + (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply) >= stor9
                    stor9 += 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply
            else:
                require stor5[stor4[address(msg.sender)]] + (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 4) >= stor5[stor4[address(msg.sender)]]
                stor5[stor4[address(msg.sender)]] += 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 4
                if not stor4[stor4[address(msg.sender)]]:
                    require 30 * 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100 >= 0
                    require arg1 <= totalSupply
                    totalSupply -= arg1
                    require arg1 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg1
                    stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor9 * arg1) - (((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) + (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) << 64)
                    if totalSupply > 0:
                        require totalSupply
                        require stor9 + ((15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) + (30 * 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100) << 64 / totalSupply) >= stor9
                        stor9 += (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) + (30 * 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100) << 64 / totalSupply
                else:
                    if balanceOf[stor4[stor4[address(msg.sender)]]] < stakingRequirement:
                        require 30 * 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100 >= 0
                        require arg1 <= totalSupply
                        totalSupply -= arg1
                        require arg1 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= arg1
                        stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor9 * arg1) - (((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) + (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) << 64)
                        if totalSupply > 0:
                            require totalSupply
                            require stor9 + ((15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) + (30 * 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100) << 64 / totalSupply) >= stor9
                            stor9 += (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) + (30 * 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100) << 64 / totalSupply
                    else:
                        require stor5[stor4[stor4[address(msg.sender)]]] + (30 * 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100) >= stor5[stor4[stor4[address(msg.sender)]]]
                        stor5[stor4[stor4[address(msg.sender)]]] += 30 * 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100
                        if not stor4[stor4[stor4[address(msg.sender)]]]:
                            require 20 * 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100 >= 0
                            require arg1 <= totalSupply
                            totalSupply -= arg1
                            require arg1 <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= arg1
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor9 * arg1) - (((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) + (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) << 64)
                            if totalSupply > 0:
                                require totalSupply
                                require stor9 + ((15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) + (20 * 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100) << 64 / totalSupply) >= stor9
                                stor9 += (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) + (20 * 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100) << 64 / totalSupply
                        else:
                            if balanceOf[stor4[stor4[stor4[address(msg.sender)]]]] < stakingRequirement:
                                require 20 * 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100 >= 0
                                require arg1 <= totalSupply
                                totalSupply -= arg1
                                require arg1 <= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] -= arg1
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor9 * arg1) - (((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) + (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) << 64)
                                if totalSupply > 0:
                                    require totalSupply
                                    require stor9 + ((15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) + (20 * 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100) << 64 / totalSupply) >= stor9
                                    stor9 += (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) + (20 * 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100) << 64 / totalSupply
                            else:
                                require stor5[stor4[stor4[stor4[address(msg.sender)]]]] + (20 * 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100) >= stor5[stor4[stor4[stor4[address(msg.sender)]]]]
                                stor5[stor4[stor4[stor4[address(msg.sender)]]]] += 20 * 15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100
                                require arg1 <= totalSupply
                                totalSupply -= arg1
                                require arg1 <= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] -= arg1
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor9 * arg1) - (((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) + (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) << 64)
                                if totalSupply > 0:
                                    require totalSupply
                                    require stor9 + ((15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) << 64 / totalSupply) >= stor9
                                    stor9 += (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) << 64 / totalSupply
    emit onTokenSell(arg1, ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) + (15 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 / 2), msg.sender);
}

function buy(address arg1) payable {
    if not stor10[address(msg.sender)]:
        require bool(stor11) != 1
    require 15 * msg.value / 100 / 2 <= 15 * msg.value / 100
    require 15 * msg.value / 100 <= msg.value
    s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 15 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
    t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 15 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
    while s < t:
        require s
        s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 15 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
        t = s
        continue 
    require 100000000000 * 10^18 <= t
    require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
    require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
    require t - 100000000000 * 10^18 / 10^10 > totalSupply
    if not arg1:
        require 15 * msg.value / 100 >= (15 * msg.value / 100) - (15 * msg.value / 100 / 2)
        if totalSupply <= 0:
            totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (15 * msg.value / 100 << 64)
        else:
            require t - 100000000000 * 10^18 / 10^10 >= totalSupply
            totalSupply = t - 100000000000 * 10^18 / 10^10
            require totalSupply
            stor9 += 15 * msg.value / 100 << 64 / totalSupply
            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * 15 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 15 * msg.value / 100 << 64 / totalSupply)
    else:
        if arg1 == msg.sender:
            require 15 * msg.value / 100 >= (15 * msg.value / 100) - (15 * msg.value / 100 / 2)
            if totalSupply <= 0:
                totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (15 * msg.value / 100 << 64)
            else:
                require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                totalSupply = t - 100000000000 * 10^18 / 10^10
                require totalSupply
                stor9 += 15 * msg.value / 100 << 64 / totalSupply
                require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * 15 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 15 * msg.value / 100 << 64 / totalSupply)
        else:
            if balanceOf[address(arg1)] < stakingRequirement:
                require 15 * msg.value / 100 >= (15 * msg.value / 100) - (15 * msg.value / 100 / 2)
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (15 * msg.value / 100 << 64)
                else:
                    require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                    totalSupply = t - 100000000000 * 10^18 / 10^10
                    require totalSupply
                    stor9 += 15 * msg.value / 100 << 64 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * 15 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 15 * msg.value / 100 << 64 / totalSupply)
            else:
                if stor4[address(msg.sender)]:
                    require 15 * msg.value / 100 >= (15 * msg.value / 100) - (15 * msg.value / 100 / 2)
                    if totalSupply <= 0:
                        totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (15 * msg.value / 100 << 64)
                    else:
                        require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                        totalSupply = t - 100000000000 * 10^18 / 10^10
                        require totalSupply
                        stor9 += 15 * msg.value / 100 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * 15 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 15 * msg.value / 100 << 64 / totalSupply)
                else:
                    if stor7[address(msg.sender)]:
                        require 15 * msg.value / 100 >= (15 * msg.value / 100) - (15 * msg.value / 100 / 2)
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (15 * msg.value / 100 << 64)
                        else:
                            require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                            totalSupply = t - 100000000000 * 10^18 / 10^10
                            require totalSupply
                            stor9 += 15 * msg.value / 100 << 64 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * 15 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 15 * msg.value / 100 << 64 / totalSupply)
                    else:
                        stor4[address(msg.sender)] = arg1
                        require stor5[address(arg1)] + (15 * msg.value / 100 / 4) >= stor5[address(arg1)]
                        stor5[address(arg1)] += 15 * msg.value / 100 / 4
                        if not stor4[address(arg1)]:
                            require 30 * 15 * msg.value / 100 / 2 / 100 >= 0
                            if totalSupply <= 0:
                                totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                                require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - ((15 * msg.value / 100) - (15 * msg.value / 100 / 2) + (30 * 15 * msg.value / 100 / 2 / 100) << 64)
                            else:
                                require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                                totalSupply = t - 100000000000 * 10^18 / 10^10
                                require totalSupply
                                stor9 += (15 * msg.value / 100) - (15 * msg.value / 100 / 2) + (30 * 15 * msg.value / 100 / 2 / 100) << 64 / totalSupply
                                require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * (15 * msg.value / 100) - (15 * msg.value / 100 / 2) + (30 * 15 * msg.value / 100 / 2 / 100) << 64 / totalSupply) + (totalSupply * (15 * msg.value / 100) - (15 * msg.value / 100 / 2) + (30 * 15 * msg.value / 100 / 2 / 100) << 64 / totalSupply)
                        else:
                            if balanceOf[stor4[address(arg1)]] < stakingRequirement:
                                require 30 * 15 * msg.value / 100 / 2 / 100 >= 0
                                if totalSupply <= 0:
                                    totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - ((15 * msg.value / 100) - (15 * msg.value / 100 / 2) + (30 * 15 * msg.value / 100 / 2 / 100) << 64)
                                else:
                                    require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                                    totalSupply = t - 100000000000 * 10^18 / 10^10
                                    require totalSupply
                                    stor9 += (15 * msg.value / 100) - (15 * msg.value / 100 / 2) + (30 * 15 * msg.value / 100 / 2 / 100) << 64 / totalSupply
                                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * (15 * msg.value / 100) - (15 * msg.value / 100 / 2) + (30 * 15 * msg.value / 100 / 2 / 100) << 64 / totalSupply) + (totalSupply * (15 * msg.value / 100) - (15 * msg.value / 100 / 2) + (30 * 15 * msg.value / 100 / 2 / 100) << 64 / totalSupply)
                            else:
                                require stor5[stor4[address(arg1)]] + (30 * 15 * msg.value / 100 / 2 / 100) >= stor5[stor4[address(arg1)]]
                                stor5[stor4[address(arg1)]] += 30 * 15 * msg.value / 100 / 2 / 100
                                if not stor4[stor4[address(arg1)]]:
                                    require 20 * 15 * msg.value / 100 / 2 / 100 >= 0
                                    if totalSupply <= 0:
                                        totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - ((15 * msg.value / 100) - (15 * msg.value / 100 / 2) + (20 * 15 * msg.value / 100 / 2 / 100) << 64)
                                    else:
                                        require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                                        totalSupply = t - 100000000000 * 10^18 / 10^10
                                        require totalSupply
                                        stor9 += (15 * msg.value / 100) - (15 * msg.value / 100 / 2) + (20 * 15 * msg.value / 100 / 2 / 100) << 64 / totalSupply
                                        require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                                        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * (15 * msg.value / 100) - (15 * msg.value / 100 / 2) + (20 * 15 * msg.value / 100 / 2 / 100) << 64 / totalSupply) + (totalSupply * (15 * msg.value / 100) - (15 * msg.value / 100 / 2) + (20 * 15 * msg.value / 100 / 2 / 100) << 64 / totalSupply)
                                else:
                                    if balanceOf[stor4[stor4[address(arg1)]]] < stakingRequirement:
                                        require 20 * 15 * msg.value / 100 / 2 / 100 >= 0
                                        if totalSupply <= 0:
                                            totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - ((15 * msg.value / 100) - (15 * msg.value / 100 / 2) + (20 * 15 * msg.value / 100 / 2 / 100) << 64)
                                        else:
                                            require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 100000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor9 += (15 * msg.value / 100) - (15 * msg.value / 100 / 2) + (20 * 15 * msg.value / 100 / 2 / 100) << 64 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * (15 * msg.value / 100) - (15 * msg.value / 100 / 2) + (20 * 15 * msg.value / 100 / 2 / 100) << 64 / totalSupply) + (totalSupply * (15 * msg.value / 100) - (15 * msg.value / 100 / 2) + (20 * 15 * msg.value / 100 / 2 / 100) << 64 / totalSupply)
                                    else:
                                        require stor5[stor4[stor4[address(arg1)]]] + (20 * 15 * msg.value / 100 / 2 / 100) >= stor5[stor4[stor4[address(arg1)]]]
                                        stor5[stor4[stor4[address(arg1)]]] += 20 * 15 * msg.value / 100 / 2 / 100
                                        if totalSupply <= 0:
                                            totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - ((15 * msg.value / 100) - (15 * msg.value / 100 / 2) << 64)
                                        else:
                                            require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                                            totalSupply = t - 100000000000 * 10^18 / 10^10
                                            require totalSupply
                                            stor9 += (15 * msg.value / 100) - (15 * msg.value / 100 / 2) << 64 / totalSupply
                                            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                                            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * (15 * msg.value / 100) - (15 * msg.value / 100 / 2) << 64 / totalSupply) + (totalSupply * (15 * msg.value / 100) - (15 * msg.value / 100 / 2) << 64 / totalSupply)
    stor7[address(msg.sender)] = 1
    emit onTokenPurchase(msg.value, (t - 100000000000 * 10^18 / 10^10) - totalSupply, msg.sender, arg1);
    return 0
}

function exit() {
    if balanceOf[address(msg.sender)] > 0:
        require balanceOf[address(msg.sender)] > 0
        require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
        require 10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)])
        require 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 <= 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100
        require (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) <= (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
        if not stor4[address(msg.sender)]:
            require 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 >= (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2)
            require balanceOf[address(msg.sender)] <= totalSupply
            totalSupply -= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = 0
            stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor9 * balanceOf[address(msg.sender)]) - (((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) + (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) << 64)
            if totalSupply > 0:
                require totalSupply
                require stor9 + (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply) >= stor9
                stor9 += 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply
        else:
            if stor4[address(msg.sender)] == msg.sender:
                require 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 >= (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2)
                require balanceOf[address(msg.sender)] <= totalSupply
                totalSupply -= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = 0
                stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor9 * balanceOf[address(msg.sender)]) - (((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) + (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor9 + (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply) >= stor9
                    stor9 += 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply
            else:
                if balanceOf[stor4[address(msg.sender)]] < stakingRequirement:
                    require 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 >= (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2)
                    require balanceOf[address(msg.sender)] <= totalSupply
                    totalSupply -= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = 0
                    stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor9 * balanceOf[address(msg.sender)]) - (((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) + (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) << 64)
                    if totalSupply > 0:
                        require totalSupply
                        require stor9 + (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply) >= stor9
                        stor9 += 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply
                else:
                    require stor5[stor4[address(msg.sender)]] + (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 4) >= stor5[stor4[address(msg.sender)]]
                    stor5[stor4[address(msg.sender)]] += 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 4
                    if not stor4[stor4[address(msg.sender)]]:
                        require 30 * 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100 >= 0
                        require balanceOf[address(msg.sender)] <= totalSupply
                        totalSupply -= balanceOf[address(msg.sender)]
                        require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = 0
                        stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor9 * balanceOf[address(msg.sender)]) - (((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) + (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) << 64)
                        if totalSupply > 0:
                            require totalSupply
                            require stor9 + ((15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) + (30 * 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100) << 64 / totalSupply) >= stor9
                            stor9 += (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) + (30 * 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100) << 64 / totalSupply
                    else:
                        if balanceOf[stor4[stor4[address(msg.sender)]]] < stakingRequirement:
                            require 30 * 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100 >= 0
                            require balanceOf[address(msg.sender)] <= totalSupply
                            totalSupply -= balanceOf[address(msg.sender)]
                            require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = 0
                            stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor9 * balanceOf[address(msg.sender)]) - (((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) + (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) << 64)
                            if totalSupply > 0:
                                require totalSupply
                                require stor9 + ((15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) + (30 * 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100) << 64 / totalSupply) >= stor9
                                stor9 += (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) + (30 * 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100) << 64 / totalSupply
                        else:
                            require stor5[stor4[stor4[address(msg.sender)]]] + (30 * 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100) >= stor5[stor4[stor4[address(msg.sender)]]]
                            stor5[stor4[stor4[address(msg.sender)]]] += 30 * 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100
                            if not stor4[stor4[stor4[address(msg.sender)]]]:
                                require 20 * 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100 >= 0
                                require balanceOf[address(msg.sender)] <= totalSupply
                                totalSupply -= balanceOf[address(msg.sender)]
                                require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = 0
                                stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor9 * balanceOf[address(msg.sender)]) - (((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) + (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) << 64)
                                if totalSupply > 0:
                                    require totalSupply
                                    require stor9 + ((15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) + (20 * 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100) << 64 / totalSupply) >= stor9
                                    stor9 += (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) + (20 * 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100) << 64 / totalSupply
                            else:
                                if balanceOf[stor4[stor4[stor4[address(msg.sender)]]]] < stakingRequirement:
                                    require 20 * 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100 >= 0
                                    require balanceOf[address(msg.sender)] <= totalSupply
                                    totalSupply -= balanceOf[address(msg.sender)]
                                    require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = 0
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor9 * balanceOf[address(msg.sender)]) - (((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) + (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) << 64)
                                    if totalSupply > 0:
                                        require totalSupply
                                        require stor9 + ((15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) + (20 * 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100) << 64 / totalSupply) >= stor9
                                        stor9 += (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) + (20 * 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100) << 64 / totalSupply
                                else:
                                    require stor5[stor4[stor4[stor4[address(msg.sender)]]]] + (20 * 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100) >= stor5[stor4[stor4[stor4[address(msg.sender)]]]]
                                    stor5[stor4[stor4[stor4[address(msg.sender)]]]] += 20 * 15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2 / 100
                                    require balanceOf[address(msg.sender)] <= totalSupply
                                    totalSupply -= balanceOf[address(msg.sender)]
                                    require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = 0
                                    stor6[address(msg.sender)] = stor6[address(msg.sender)] - (stor9 * balanceOf[address(msg.sender)]) - (((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) + (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) << 64)
                                    if totalSupply > 0:
                                        require totalSupply
                                        require stor9 + ((15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) << 64 / totalSupply) >= stor9
                                        stor9 += (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2) << 64 / totalSupply
        emit onTokenSell(balanceOf[address(msg.sender)], ((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) + (15 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 / 2), msg.sender);
    require (Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0
    stor6[address(msg.sender)] += Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)])
    stor5[address(msg.sender)] = 0
    emit onWithdraw(((Mask(192, 64, (stor9 * balanceOf[address(msg.sender)]) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]), msg.sender);
}



}
