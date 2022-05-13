contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor8;
uint8 stor11;
uint8 stor4982;
uint8 stor67A7;
uint8 storBEDE;
uint8 storCF0D;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 20
    stor0.length.field_8 = 'Proof Of Application' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'POAP' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 100 * 10^18
    stor8 = 0
    stor11 = 1
    require not msg.value
    stor67A7 = 1
    storBEDE = 1
    storCF0D = 1
    stor4982 = 1
    return code.data[584 len 4937]
}



// =====================  Runtime code  =====================


const decimals = 18

const totalEthereumBalance = eth.balance(this.address)


array of uint256 name;
array of uint256 symbol;
uint256 stakingRequirement;
mapping of uint8 stor3;
mapping of uint256 balanceOf;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
uint256 totalSupply;
uint256 stor9;
mapping of uint8 stor10;
uint8 onlyAmbassadors;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function onlyAmbassadors() {
    return bool(onlyAmbassadors)
}

function sub_38e51480(?) {
    return bool(stor10[arg1])
}

function stakingRequirement() {
    return stakingRequirement
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function myTokens() {
    return balanceOf[address(msg.sender)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function disableInitialStage() {
    require stor10[msg.sender]
    onlyAmbassadors = 0
}

function dividendsOf(address arg1) {
    return (Mask(192, 64, (balanceOf[address(arg1)] * stor9) - stor6[address(arg1)]) >> 64)
}

function myDividends(bool arg1) {
    if arg1:
        return ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)])
    return (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64)
}

function sellPrice() {
    if 0 == totalSupply:
        return (25 * 10^6 * 3600)
    require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
    require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 4 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
    return (((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) - ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 4))
}

function buyPrice() {
    if 0 == totalSupply:
        return 11 * 10^10
    require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
    require ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 4) + ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
    return (((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 4) + ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18))
}

function withdraw() {
    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0
    stor6[address(msg.sender)] += Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)])
    stor5[address(msg.sender)] = 0
    call msg.sender with:
       value (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit onWithdraw(((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]), msg.sender);
}

function calculateEthereumReceived(uint256 arg1) {
    require arg1 <= totalSupply
    require 10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1)
    require (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 4 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
    return (((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 4))
}

function calculateTokensReceived(uint256 arg1) {
    require arg1 / 4 <= arg1
    s = (2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * arg1 / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
    t = (2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * arg1 / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
    while s < t:
        require s
        s = ((2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * arg1 / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
        t = s
        continue 
    if 100000000000 * 10^18 <= t:
        return ((t - 100000000000 * 10^18 / 10^10) - totalSupply)
    revert
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require 10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1)
    require (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 4 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    stor6[address(msg.sender)] = stor6[address(msg.sender)] - (((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 4) << 64) - (arg1 * stor9)
    if totalSupply > 0:
        require totalSupply
        require (Mask(192, 2, (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) << 62 / totalSupply) + stor9 >= stor9
        stor9 += Mask(192, 2, (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) << 62 / totalSupply
    emit onTokenSell(arg1, ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 4), msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] > 0
    require not onlyAmbassadors
    require arg2 <= balanceOf[address(msg.sender)]
    if (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0:
        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0
        stor6[address(msg.sender)] += Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)])
        stor5[address(msg.sender)] = 0
        call msg.sender with:
           value (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit onWithdraw(((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]), msg.sender);
    require arg2 / 4 <= arg2
    require 10^10 * ((arg2 / 4) + 10^18)^2 + -(arg2 / 4) - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * arg2 / 4) + (10^10 * totalSupply + 10^18 / 10^18 * arg2 / 4)
    require arg2 / 4 <= totalSupply
    totalSupply -= arg2 / 4
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 - (arg2 / 4) + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 - (arg2 / 4) + balanceOf[arg1]
    stor6[address(msg.sender)] += -1 * arg2 * stor9
    stor6[arg1] = stor6[arg1] + (arg2 * stor9) - (arg2 / 4 * stor9)
    require totalSupply
    require ((25 * 10^6 * 3600 * arg2 / 4) + (10^10 * totalSupply + 10^18 / 10^18 * arg2 / 4) - (10^10 * ((arg2 / 4) + 10^18)^2 + -(arg2 / 4) - 10^18 / 10^18 / 2) / 10^18 << 64 / totalSupply) + stor9 >= stor9
    stor9 += (25 * 10^6 * 3600 * arg2 / 4) + (10^10 * totalSupply + 10^18 / 10^18 * arg2 / 4) - (10^10 * ((arg2 / 4) + 10^18)^2 + -(arg2 / 4) - 10^18 / 10^18 / 2) / 10^18 << 64 / totalSupply
    emit Transfer((arg2 - (arg2 / 4)), msg.sender, arg1);
    return 1
}

function exit() {
    if balanceOf[address(msg.sender)] > 0:
        require balanceOf[address(msg.sender)] > 0
        require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
        require 10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)])
        require (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 4 <= (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
        require balanceOf[address(msg.sender)] <= totalSupply
        totalSupply -= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = 0
        stor6[address(msg.sender)] = stor6[address(msg.sender)] - (((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - ((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 4) << 64) - (balanceOf[address(msg.sender)] * stor9)
        if totalSupply > 0:
            require totalSupply
            require (Mask(192, 2, (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) << 62 / totalSupply) + stor9 >= stor9
            stor9 += Mask(192, 2, (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) << 62 / totalSupply
        emit onTokenSell(balanceOf[address(msg.sender)], ((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - ((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 4), msg.sender);
    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0
    stor6[address(msg.sender)] += Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)])
    stor5[address(msg.sender)] = 0
    call msg.sender with:
       value (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit onWithdraw(((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]), msg.sender);
}

function _fallback() payable {
    if not onlyAmbassadors:
        onlyAmbassadors = 0
        require msg.value / 16 <= msg.value / 4
        require msg.value / 4 <= msg.value
        s = (2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
        t = (2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        while s < t:
            require s
            s = ((2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
            t = s
            continue 
    else:
        if eth.balance(this.address) - msg.value > 3 * 10^17:
            onlyAmbassadors = 0
            require msg.value / 16 <= msg.value / 4
            require msg.value / 4 <= msg.value
            s = (2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
        else:
            require 1 == bool(stor3[address(msg.sender)])
            require msg.value + stor7[address(msg.sender)] <= 10^17
            require msg.value + stor7[address(msg.sender)] >= stor7[address(msg.sender)]
            stor7[address(msg.sender)] += msg.value
            require msg.value / 16 <= msg.value / 4
            require msg.value / 4 <= msg.value
            s = (2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
    require 100000000000 * 10^18 <= t
    require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
    require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
    require t - 100000000000 * 10^18 / 10^10 > totalSupply
    require msg.value / 4 >= (msg.value / 4) - (msg.value / 16)
    if totalSupply <= 0:
        totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
        require (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)]
        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (Mask(192, 2, msg.value) << 62)
    else:
        require t - 100000000000 * 10^18 / 10^10 >= totalSupply
        totalSupply = t - 100000000000 * 10^18 / 10^10
        require t - 100000000000 * 10^18 / 10^10
        stor9 += Mask(192, 2, msg.value) << 62 / t - 100000000000 * 10^18 / 10^10
        require totalSupply
        require (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)]
        stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * Mask(192, 2, msg.value) << 62 / totalSupply) + (totalSupply * Mask(192, 2, msg.value) << 62 / totalSupply)
    emit onTokenPurchase(msg.value, (t - 100000000000 * 10^18 / 10^10) - totalSupply, msg.sender, 0);
}

function buy(address arg1) payable {
    if not onlyAmbassadors:
        onlyAmbassadors = 0
        require msg.value / 16 <= msg.value / 4
        require msg.value / 4 <= msg.value
        s = (2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
        t = (2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        while s < t:
            require s
            s = ((2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
            t = s
            continue 
    else:
        if eth.balance(this.address) - msg.value > 3 * 10^17:
            onlyAmbassadors = 0
            require msg.value / 16 <= msg.value / 4
            require msg.value / 4 <= msg.value
            s = (2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
        else:
            require 1 == bool(stor3[address(msg.sender)])
            require msg.value + stor7[address(msg.sender)] <= 10^17
            require msg.value + stor7[address(msg.sender)] >= stor7[address(msg.sender)]
            stor7[address(msg.sender)] += msg.value
            require msg.value / 16 <= msg.value / 4
            require msg.value / 4 <= msg.value
            s = (2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * msg.value / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
    require 100000000000 * 10^18 <= t
    require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
    require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
    require t - 100000000000 * 10^18 / 10^10 > totalSupply
    if not arg1:
        require msg.value / 4 >= (msg.value / 4) - (msg.value / 16)
        if totalSupply <= 0:
            totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
            require (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)]
            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (Mask(192, 2, msg.value) << 62)
        else:
            require t - 100000000000 * 10^18 / 10^10 >= totalSupply
            totalSupply = t - 100000000000 * 10^18 / 10^10
            require t - 100000000000 * 10^18 / 10^10
            stor9 += Mask(192, 2, msg.value) << 62 / t - 100000000000 * 10^18 / 10^10
            require totalSupply
            require (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)]
            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * Mask(192, 2, msg.value) << 62 / totalSupply) + (totalSupply * Mask(192, 2, msg.value) << 62 / totalSupply)
    else:
        if arg1 == msg.sender:
            require msg.value / 4 >= (msg.value / 4) - (msg.value / 16)
            if totalSupply <= 0:
                totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                require (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)]
                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (Mask(192, 2, msg.value) << 62)
            else:
                require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                totalSupply = t - 100000000000 * 10^18 / 10^10
                require t - 100000000000 * 10^18 / 10^10
                stor9 += Mask(192, 2, msg.value) << 62 / t - 100000000000 * 10^18 / 10^10
                require totalSupply
                require (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)]
                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * Mask(192, 2, msg.value) << 62 / totalSupply) + (totalSupply * Mask(192, 2, msg.value) << 62 / totalSupply)
        else:
            if balanceOf[address(arg1)] < stakingRequirement:
                require msg.value / 4 >= (msg.value / 4) - (msg.value / 16)
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    require (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)]
                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (Mask(192, 2, msg.value) << 62)
                else:
                    require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                    totalSupply = t - 100000000000 * 10^18 / 10^10
                    require t - 100000000000 * 10^18 / 10^10
                    stor9 += Mask(192, 2, msg.value) << 62 / t - 100000000000 * 10^18 / 10^10
                    require totalSupply
                    require (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)]
                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * Mask(192, 2, msg.value) << 62 / totalSupply) + (totalSupply * Mask(192, 2, msg.value) << 62 / totalSupply)
            else:
                require (msg.value / 16) + stor5[address(arg1)] >= stor5[address(arg1)]
                stor5[address(arg1)] += msg.value / 16
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    require (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)]
                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - ((msg.value / 4) - (msg.value / 16) << 64)
                else:
                    require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                    totalSupply = t - 100000000000 * 10^18 / 10^10
                    require t - 100000000000 * 10^18 / 10^10
                    stor9 += (msg.value / 4) - (msg.value / 16) << 64 / t - 100000000000 * 10^18 / 10^10
                    require totalSupply
                    require (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)]
                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * (msg.value / 4) - (msg.value / 16) << 64 / totalSupply) + (totalSupply * (msg.value / 4) - (msg.value / 16) << 64 / totalSupply)
    emit onTokenPurchase(msg.value, (t - 100000000000 * 10^18 / 10^10) - totalSupply, msg.sender, arg1);
    return 0
}

function reinvest(address arg1) {
    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] > 0
    stor6[address(msg.sender)] += Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)])
    stor5[address(msg.sender)] = 0
    if not onlyAmbassadors:
        onlyAmbassadors = 0
        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 16 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4
        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
        s = (2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
        t = (2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        while s < t:
            require s
            s = ((2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
            t = s
            continue 
    else:
        if eth.balance(this.address) - (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) - stor5[address(msg.sender)] > 3 * 10^17:
            onlyAmbassadors = 0
            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 16 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4
            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
            s = (2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
        else:
            require 1 == bool(stor3[address(msg.sender)])
            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] + stor7[address(msg.sender)] <= 10^17
            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] + stor7[address(msg.sender)] >= stor7[address(msg.sender)]
            stor7[address(msg.sender)] = (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] + stor7[address(msg.sender)]
            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 16 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4
            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]
            s = (2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((2000000000000000000000 * 10^18 * totalSupply) + (100 * 10^18 * totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor5[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
    require 100000000000 * 10^18 <= t
    require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
    require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
    require t - 100000000000 * 10^18 / 10^10 > totalSupply
    if not arg1:
        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4 >= ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 16)
        if totalSupply <= 0:
            totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
            require (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)]
            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (Mask(192, 2, (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]) << 62)
        else:
            require t - 100000000000 * 10^18 / 10^10 >= totalSupply
            totalSupply = t - 100000000000 * 10^18 / 10^10
            require t - 100000000000 * 10^18 / 10^10
            stor9 += Mask(192, 2, (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]) << 62 / t - 100000000000 * 10^18 / 10^10
            require totalSupply
            require (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)]
            stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * Mask(192, 2, (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]) << 62 / totalSupply) + (totalSupply * Mask(192, 2, (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]) << 62 / totalSupply)
    else:
        if arg1 == msg.sender:
            require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4 >= ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 16)
            if totalSupply <= 0:
                totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                require (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)]
                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (Mask(192, 2, (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]) << 62)
            else:
                require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                totalSupply = t - 100000000000 * 10^18 / 10^10
                require t - 100000000000 * 10^18 / 10^10
                stor9 += Mask(192, 2, (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]) << 62 / t - 100000000000 * 10^18 / 10^10
                require totalSupply
                require (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)]
                stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * Mask(192, 2, (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]) << 62 / totalSupply) + (totalSupply * Mask(192, 2, (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]) << 62 / totalSupply)
        else:
            if balanceOf[address(arg1)] < stakingRequirement:
                require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4 >= ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 16)
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    require (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)]
                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (Mask(192, 2, (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]) << 62)
                else:
                    require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                    totalSupply = t - 100000000000 * 10^18 / 10^10
                    require t - 100000000000 * 10^18 / 10^10
                    stor9 += Mask(192, 2, (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]) << 62 / t - 100000000000 * 10^18 / 10^10
                    require totalSupply
                    require (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)]
                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * Mask(192, 2, (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]) << 62 / totalSupply) + (totalSupply * Mask(192, 2, (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)]) << 62 / totalSupply)
            else:
                require ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 16) + stor5[address(arg1)] >= stor5[address(arg1)]
                stor5[address(arg1)] += (Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 16
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    require (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)]
                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 16) << 64)
                else:
                    require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                    totalSupply = t - 100000000000 * 10^18 / 10^10
                    require t - 100000000000 * 10^18 / 10^10
                    stor9 += ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 16) << 64 / t - 100000000000 * 10^18 / 10^10
                    require totalSupply
                    require (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = (t - 100000000000 * 10^18 / 10^10) - totalSupply + balanceOf[address(msg.sender)]
                    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor9) - (totalSupply * stor9) - (t - 100000000000 * 10^18 / 10^10 * ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 16) << 64 / totalSupply) + (totalSupply * ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 4) - ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)] / 16) << 64 / totalSupply)
    emit onTokenPurchase((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)], (t - 100000000000 * 10^18 / 10^10) - totalSupply, msg.sender, arg1);
    emit onReinvestment((Mask(192, 64, (balanceOf[address(msg.sender)] * stor9) - stor6[address(msg.sender)]) >> 64) + stor5[address(msg.sender)], (t - 100000000000 * 10^18 / 10^10) - totalSupply, msg.sender);
}



}
