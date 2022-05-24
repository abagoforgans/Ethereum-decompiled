contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor9;
mapping of uint8 stor11;
uint8 stor12;
uint8 stor3090;
uint8 stor4927;
uint8 stor89A5;
uint8 stor8A29;
uint8 storB19B;
uint8 storF5DF;
uint8 storF913;

function _fallback() payable {
    stor0 = 426410 * 3600
    bool(stor1.length) = 0
    stor1.length.field_1 = 11
    stor1.length.field_8 = 'Silver Moon' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'Moon' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 1
    stor9 = 0
    stor12 = 1
    require not msg.value
    stor11[address(msg.sender)] = 1
    storB19B = 1
    storF913 = 1
    stor89A5 = 1
    stor4927 = 1
    stor3090 = 1
    storF5DF = 1
    stor8A29 = 1
    return code.data[743 len 5606]
}



// =====================  Runtime code  =====================


const decimals = 18

const totalEthereumBalance = eth.balance(this.address)


uint256 stor0;
array of uint256 name;
array of uint256 symbol;
uint256 stakingRequirement;
mapping of uint8 stor4;
mapping of uint256 balanceOf;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint256 stor8;
uint256 totalSupply;
uint256 stor10;
mapping of uint8 stor11;
uint8 stor12;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function onlyAmbassadors() {
    return bool(stor12)
}

function stakingRequirement() {
    return stakingRequirement
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function administrators(address arg1) {
    return bool(stor11[arg1])
}

function myTokens() {
    return balanceOf[address(msg.sender)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function setStakingRequirement(uint256 arg1) {
    require stor11[address(msg.sender)]
    stakingRequirement = arg1
}

function setName(string arg1) {
    require stor11[address(msg.sender)]
    name[] = Array(len=arg1.length, data=arg1[all])
}

function setSymbol(string arg1) {
    require stor11[address(msg.sender)]
    symbol[] = Array(len=arg1.length, data=arg1[all])
}

function dividendsOf(address arg1) {
    return (Mask(192, 64, (balanceOf[address(arg1)] * stor10) - stor7[address(arg1)]) >> 64)
}

function setAdministrator(address arg1, bool arg2) {
    require stor11[address(msg.sender)]
    stor11[address(arg1)] = uint8(arg2)
}

function myDividends(bool arg1) {
    if arg1:
        return ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)])
    return (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64)
}

function sellPrice() {
    if 0 == totalSupply:
        return (2500000 * 3600)
    require 1999999999999999999 * 10^9 <= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (2500000 * 10^18 * 3600)
    require (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 5 <= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18
    return (((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18) - ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 5))
}

function buyPrice() {
    if 0 == totalSupply:
        return 11 * 10^9
    require 1999999999999999999 * 10^9 <= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (2500000 * 10^18 * 3600)
    require ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 5) + ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18) >= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18
    return (((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 5) + ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18))
}

function withdraw() {
    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] > 0
    stor7[address(msg.sender)] += Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)])
    stor6[address(msg.sender)] = 0
    call msg.sender with:
       value (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit onWithdraw(((Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)]), msg.sender);
}

function calculateEthereumReceived(uint256 arg1) {
    require arg1 <= totalSupply
    require 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1)
    require (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 5 <= (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
    return (((2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - ((2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 5))
}

function calculateTokensReceived(uint256 arg1) {
    require arg1 / 5 <= arg1
    s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * arg1) + (-2000000000000000000000000000 * 10^18 * arg1 / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
    t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * arg1) + (-2000000000000000000000000000 * 10^18 * arg1 / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
    while s < t:
        require s
        s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * arg1) + (-2000000000000000000000000000 * 10^18 * arg1 / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
        t = s
        continue 
    if 10000000000 * 10^18 <= t:
        return ((t - 10000000000 * 10^18 / 10^9) - totalSupply)
    revert
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1)
    require (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 5 <= (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    stor7[address(msg.sender)] = stor7[address(msg.sender)] - (((2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - ((2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 5) << 64) - (arg1 * stor10)
    if totalSupply > 0:
        require totalSupply
        require ((2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 5 << 64 / totalSupply) + stor10 >= stor10
        stor10 += (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 5 << 64 / totalSupply
    emit onTokenSell(arg1, ((2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - ((2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 5), msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] > 0
    require not stor12
    require arg2 <= balanceOf[address(msg.sender)]
    if (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] > 0:
        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] > 0
        stor7[address(msg.sender)] += Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)])
        stor6[address(msg.sender)] = 0
        call msg.sender with:
           value (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit onWithdraw(((Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)]), msg.sender);
    require arg2 / 5 <= arg2
    require 10^9 * ((arg2 / 5) + 10^18)^2 + -(arg2 / 5) - 10^18 / 10^18 / 2 <= (2500000 * 3600 * arg2 / 5) + (10^9 * totalSupply + 10^18 / 10^18 * arg2 / 5)
    require arg2 / 5 <= totalSupply
    totalSupply -= arg2 / 5
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 - (arg2 / 5) + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 - (arg2 / 5) + balanceOf[arg1]
    stor7[address(msg.sender)] += -1 * arg2 * stor10
    stor7[arg1] = stor7[arg1] + (arg2 * stor10) - (arg2 / 5 * stor10)
    require totalSupply
    require ((2500000 * 3600 * arg2 / 5) + (10^9 * totalSupply + 10^18 / 10^18 * arg2 / 5) - (10^9 * ((arg2 / 5) + 10^18)^2 + -(arg2 / 5) - 10^18 / 10^18 / 2) / 10^18 << 64 / totalSupply) + stor10 >= stor10
    stor10 += (2500000 * 3600 * arg2 / 5) + (10^9 * totalSupply + 10^18 / 10^18 * arg2 / 5) - (10^9 * ((arg2 / 5) + 10^18)^2 + -(arg2 / 5) - 10^18 / 10^18 / 2) / 10^18 << 64 / totalSupply
    emit Transfer((arg2 - (arg2 / 5)), msg.sender, arg1);
    return 1
}

function exit() {
    if balanceOf[address(msg.sender)] > 0:
        require balanceOf[address(msg.sender)] > 0
        require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
        require 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2 <= (2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)])
        require (2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 5 <= (2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
        require balanceOf[address(msg.sender)] <= totalSupply
        totalSupply -= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = 0
        stor7[address(msg.sender)] = stor7[address(msg.sender)] - (((2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - ((2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 5) << 64) - (balanceOf[address(msg.sender)] * stor10)
        if totalSupply > 0:
            require totalSupply
            require ((2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 5 << 64 / totalSupply) + stor10 >= stor10
            stor10 += (2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 5 << 64 / totalSupply
        emit onTokenSell(balanceOf[address(msg.sender)], ((2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - ((2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 5), msg.sender);
    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] > 0
    stor7[address(msg.sender)] += Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)])
    stor6[address(msg.sender)] = 0
    call msg.sender with:
       value (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit onWithdraw(((Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)]), msg.sender);
}

function _fallback() payable {
    if eth.balance(this.address) <= 100 * 10^18:
        require msg.value <= 3 * 10^18
    require block.gasprice <= 6 * 10^10
    if block.timestamp >= stor0:
        stor12 = 0
    if not stor12:
        stor12 = 0
        require msg.value / 5 / 3 <= msg.value / 5
        require msg.value / 5 <= msg.value
        s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * msg.value / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
        t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * msg.value / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
        while s < t:
            require s
            s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * msg.value / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
            t = s
            continue 
    else:
        if eth.balance(this.address) - msg.value > 42 * 10^17:
            stor12 = 0
            require msg.value / 5 / 3 <= msg.value / 5
            require msg.value / 5 <= msg.value
            s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * msg.value / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
            t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * msg.value / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
            while s < t:
                require s
                s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * msg.value / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                t = s
                continue 
        else:
            require 1 == bool(stor4[address(msg.sender)])
            require msg.value + stor8[address(msg.sender)] <= 7 * 10^17
            require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
            stor8[address(msg.sender)] += msg.value
            require msg.value / 5 / 3 <= msg.value / 5
            require msg.value / 5 <= msg.value
            s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * msg.value / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
            t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * msg.value / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
            while s < t:
                require s
                s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * msg.value / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                t = s
                continue 
    require 10000000000 * 10^18 <= t
    require (t - 10000000000 * 10^18 / 10^9) - totalSupply > 0
    require t - 10000000000 * 10^18 / 10^9 >= (t - 10000000000 * 10^18 / 10^9) - totalSupply
    require t - 10000000000 * 10^18 / 10^9 > totalSupply
    require msg.value / 5 >= (msg.value / 5) - (msg.value / 5 / 3)
    if totalSupply <= 0:
        totalSupply = (t - 10000000000 * 10^18 / 10^9) - totalSupply
        require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
        stor7[address(msg.sender)] = stor7[address(msg.sender)] + (t - 10000000000 * 10^18 / 10^9 * stor10) - (totalSupply * stor10) - (msg.value / 5 << 64)
    else:
        require t - 10000000000 * 10^18 / 10^9 >= totalSupply
        totalSupply = t - 10000000000 * 10^18 / 10^9
        require t - 10000000000 * 10^18 / 10^9
        stor10 += msg.value / 5 << 64 / t - 10000000000 * 10^18 / 10^9
        require totalSupply
        require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
        stor7[address(msg.sender)] = stor7[address(msg.sender)] + (t - 10000000000 * 10^18 / 10^9 * stor10) - (totalSupply * stor10) - (t - 10000000000 * 10^18 / 10^9 * msg.value / 5 << 64 / totalSupply) + (totalSupply * msg.value / 5 << 64 / totalSupply)
    emit onTokenPurchase(msg.value, (t - 10000000000 * 10^18 / 10^9) - totalSupply, msg.sender, 0);
}

function buy(address arg1) payable {
    if eth.balance(this.address) <= 100 * 10^18:
        require msg.value <= 3 * 10^18
    require block.gasprice <= 5 * 10^10
    if block.timestamp >= stor0:
        stor12 = 0
    if not stor12:
        stor12 = 0
        require msg.value / 5 / 3 <= msg.value / 5
        require msg.value / 5 <= msg.value
        s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * msg.value / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
        t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * msg.value / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
        while s < t:
            require s
            s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * msg.value / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
            t = s
            continue 
    else:
        if eth.balance(this.address) - msg.value > 42 * 10^17:
            stor12 = 0
            require msg.value / 5 / 3 <= msg.value / 5
            require msg.value / 5 <= msg.value
            s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * msg.value / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
            t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * msg.value / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
            while s < t:
                require s
                s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * msg.value / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                t = s
                continue 
        else:
            require 1 == bool(stor4[address(msg.sender)])
            require msg.value + stor8[address(msg.sender)] <= 7 * 10^17
            require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
            stor8[address(msg.sender)] += msg.value
            require msg.value / 5 / 3 <= msg.value / 5
            require msg.value / 5 <= msg.value
            s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * msg.value / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
            t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * msg.value / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
            while s < t:
                require s
                s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * msg.value / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                t = s
                continue 
    require 10000000000 * 10^18 <= t
    require (t - 10000000000 * 10^18 / 10^9) - totalSupply > 0
    require t - 10000000000 * 10^18 / 10^9 >= (t - 10000000000 * 10^18 / 10^9) - totalSupply
    require t - 10000000000 * 10^18 / 10^9 > totalSupply
    if not arg1:
        require msg.value / 5 >= (msg.value / 5) - (msg.value / 5 / 3)
        if totalSupply <= 0:
            totalSupply = (t - 10000000000 * 10^18 / 10^9) - totalSupply
            require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            stor7[address(msg.sender)] = stor7[address(msg.sender)] + (t - 10000000000 * 10^18 / 10^9 * stor10) - (totalSupply * stor10) - (msg.value / 5 << 64)
        else:
            require t - 10000000000 * 10^18 / 10^9 >= totalSupply
            totalSupply = t - 10000000000 * 10^18 / 10^9
            require t - 10000000000 * 10^18 / 10^9
            stor10 += msg.value / 5 << 64 / t - 10000000000 * 10^18 / 10^9
            require totalSupply
            require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            stor7[address(msg.sender)] = stor7[address(msg.sender)] + (t - 10000000000 * 10^18 / 10^9 * stor10) - (totalSupply * stor10) - (t - 10000000000 * 10^18 / 10^9 * msg.value / 5 << 64 / totalSupply) + (totalSupply * msg.value / 5 << 64 / totalSupply)
    else:
        if arg1 == msg.sender:
            require msg.value / 5 >= (msg.value / 5) - (msg.value / 5 / 3)
            if totalSupply <= 0:
                totalSupply = (t - 10000000000 * 10^18 / 10^9) - totalSupply
                require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
                stor7[address(msg.sender)] = stor7[address(msg.sender)] + (t - 10000000000 * 10^18 / 10^9 * stor10) - (totalSupply * stor10) - (msg.value / 5 << 64)
            else:
                require t - 10000000000 * 10^18 / 10^9 >= totalSupply
                totalSupply = t - 10000000000 * 10^18 / 10^9
                require t - 10000000000 * 10^18 / 10^9
                stor10 += msg.value / 5 << 64 / t - 10000000000 * 10^18 / 10^9
                require totalSupply
                require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
                stor7[address(msg.sender)] = stor7[address(msg.sender)] + (t - 10000000000 * 10^18 / 10^9 * stor10) - (totalSupply * stor10) - (t - 10000000000 * 10^18 / 10^9 * msg.value / 5 << 64 / totalSupply) + (totalSupply * msg.value / 5 << 64 / totalSupply)
        else:
            if balanceOf[address(arg1)] < stakingRequirement:
                require msg.value / 5 >= (msg.value / 5) - (msg.value / 5 / 3)
                if totalSupply <= 0:
                    totalSupply = (t - 10000000000 * 10^18 / 10^9) - totalSupply
                    require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
                    stor7[address(msg.sender)] = stor7[address(msg.sender)] + (t - 10000000000 * 10^18 / 10^9 * stor10) - (totalSupply * stor10) - (msg.value / 5 << 64)
                else:
                    require t - 10000000000 * 10^18 / 10^9 >= totalSupply
                    totalSupply = t - 10000000000 * 10^18 / 10^9
                    require t - 10000000000 * 10^18 / 10^9
                    stor10 += msg.value / 5 << 64 / t - 10000000000 * 10^18 / 10^9
                    require totalSupply
                    require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
                    stor7[address(msg.sender)] = stor7[address(msg.sender)] + (t - 10000000000 * 10^18 / 10^9 * stor10) - (totalSupply * stor10) - (t - 10000000000 * 10^18 / 10^9 * msg.value / 5 << 64 / totalSupply) + (totalSupply * msg.value / 5 << 64 / totalSupply)
            else:
                require (msg.value / 5 / 3) + stor6[address(arg1)] >= stor6[address(arg1)]
                stor6[address(arg1)] += msg.value / 5 / 3
                if totalSupply <= 0:
                    totalSupply = (t - 10000000000 * 10^18 / 10^9) - totalSupply
                    require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
                    stor7[address(msg.sender)] = stor7[address(msg.sender)] + (t - 10000000000 * 10^18 / 10^9 * stor10) - (totalSupply * stor10) - ((msg.value / 5) - (msg.value / 5 / 3) << 64)
                else:
                    require t - 10000000000 * 10^18 / 10^9 >= totalSupply
                    totalSupply = t - 10000000000 * 10^18 / 10^9
                    require t - 10000000000 * 10^18 / 10^9
                    stor10 += (msg.value / 5) - (msg.value / 5 / 3) << 64 / t - 10000000000 * 10^18 / 10^9
                    require totalSupply
                    require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
                    stor7[address(msg.sender)] = stor7[address(msg.sender)] + (t - 10000000000 * 10^18 / 10^9 * stor10) - (totalSupply * stor10) - (t - 10000000000 * 10^18 / 10^9 * (msg.value / 5) - (msg.value / 5 / 3) << 64 / totalSupply) + (totalSupply * (msg.value / 5) - (msg.value / 5 / 3) << 64 / totalSupply)
    emit onTokenPurchase(msg.value, (t - 10000000000 * 10^18 / 10^9) - totalSupply, msg.sender, arg1);
    return 0
}

function reinvest() {
    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] > 0
    stor7[address(msg.sender)] += Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)])
    stor6[address(msg.sender)] = 0
    if block.timestamp >= stor0:
        stor12 = 0
    if not stor12:
        stor12 = 0
        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5 / 3 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5
        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)]
        s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + (0x59aedfc10d7279c5eed1401645400000000000 * stor6[address(msg.sender)]) + (-2000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
        t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + (0x59aedfc10d7279c5eed1401645400000000000 * stor6[address(msg.sender)]) + (-2000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
        while s < t:
            require s
            s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + (0x59aedfc10d7279c5eed1401645400000000000 * stor6[address(msg.sender)]) + (-2000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
            t = s
            continue 
    else:
        if eth.balance(this.address) - (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) - stor6[address(msg.sender)] > 42 * 10^17:
            stor12 = 0
            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5 / 3 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5
            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)]
            s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + (0x59aedfc10d7279c5eed1401645400000000000 * stor6[address(msg.sender)]) + (-2000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
            t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + (0x59aedfc10d7279c5eed1401645400000000000 * stor6[address(msg.sender)]) + (-2000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
            while s < t:
                require s
                s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + (0x59aedfc10d7279c5eed1401645400000000000 * stor6[address(msg.sender)]) + (-2000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                t = s
                continue 
        else:
            require 1 == bool(stor4[address(msg.sender)])
            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] + stor8[address(msg.sender)] <= 7 * 10^17
            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
            stor8[address(msg.sender)] = (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] + stor8[address(msg.sender)]
            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5 / 3 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5
            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)]
            s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + (0x59aedfc10d7279c5eed1401645400000000000 * stor6[address(msg.sender)]) + (-2000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
            t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + (0x59aedfc10d7279c5eed1401645400000000000 * stor6[address(msg.sender)]) + (-2000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
            while s < t:
                require s
                s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + (0x59aedfc10d7279c5eed1401645400000000000 * stor6[address(msg.sender)]) + (-2000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                t = s
                continue 
    require 10000000000 * 10^18 <= t
    require (t - 10000000000 * 10^18 / 10^9) - totalSupply > 0
    require t - 10000000000 * 10^18 / 10^9 >= (t - 10000000000 * 10^18 / 10^9) - totalSupply
    require t - 10000000000 * 10^18 / 10^9 > totalSupply
    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5 >= ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5 / 3)
    if totalSupply <= 0:
        totalSupply = (t - 10000000000 * 10^18 / 10^9) - totalSupply
        require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
        stor7[address(msg.sender)] = stor7[address(msg.sender)] + (t - 10000000000 * 10^18 / 10^9 * stor10) - (totalSupply * stor10) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5 << 64)
    else:
        require t - 10000000000 * 10^18 / 10^9 >= totalSupply
        totalSupply = t - 10000000000 * 10^18 / 10^9
        require t - 10000000000 * 10^18 / 10^9
        stor10 += (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5 << 64 / t - 10000000000 * 10^18 / 10^9
        require totalSupply
        require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
        stor7[address(msg.sender)] = stor7[address(msg.sender)] + (t - 10000000000 * 10^18 / 10^9 * stor10) - (totalSupply * stor10) - (t - 10000000000 * 10^18 / 10^9 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5 << 64 / totalSupply) + (totalSupply * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)] / 5 << 64 / totalSupply)
    emit onTokenPurchase((Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)], (t - 10000000000 * 10^18 / 10^9) - totalSupply, msg.sender, 0);
    emit onReinvestment((Mask(192, 64, (balanceOf[address(msg.sender)] * stor10) - stor7[address(msg.sender)]) >> 64) + stor6[address(msg.sender)], (t - 10000000000 * 10^18 / 10^9) - totalSupply, msg.sender);
}



}
