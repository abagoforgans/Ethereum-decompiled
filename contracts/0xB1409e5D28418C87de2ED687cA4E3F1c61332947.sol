contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
address stor9;
address stor10;
address stor11;
address stor12;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = '1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0
    stor6 = 0
    stor7 = 1250
    require not msg.value
    stor4 = 0
    stor8 = code.data[4824 len 20]
    stor9 = code.data[4856 len 20]
    stor10 = code.data[4888 len 20]
    stor11 = code.data[4920 len 20]
    stor12 = code.data[4952 len 20]
    stor5 = code.data[4972 len 32]
    stor6 = code.data[5004 len 32]
    stor0 = 15000000 * 10^18
    stor0 += 6250000 * 10^18
    stor0 += 30410000 * 10^18
    stor1[stor9] = 15000000 * 10^18
    stor1[stor10] = 6250000 * 10^18
    stor1[stor11] = 1250000 * 10^18
    stor1[stor12] = 625 * 10^12 * 3600 * 24 * 3600 * 24 * 3600
    emit code.data[4780 len 32]: 15000000 * 10^18, stor9
    emit code.data[4780 len 32]: 6250000 * 10^18, stor10
    emit code.data[4780 len 32]: 1250000 * 10^18, stor11
    emit code.data[4780 len 32]: (625 * 10^12 * 3600 * 24 * 3600 * 24 * 3600), stor12
    return code.data[990 len 3790]
}



// =====================  Runtime code  =====================


const name = ''

const tixFounders = 6250000 * 10^18

const t2tokenExchangeRate = 1250

const decimals = 18

const finalTier = 52500000 * 10^18

const tixPromo = 1250000 * 10^18

const tixFund = 15000000 * 10^18

const t3tokenExchangeRate = 1041

const symbol = ''

const tixPresale = (625 * 10^12 * 3600 * 24 * 3600 * 24 * 3600)

const tokenGenerationCap = 62500000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
uint8 stor4;
uint256 startTime;
uint256 endTime;
uint256 tokenExchangeRate;
address ethFundDepositAddress;
address tixFundDepositAddress;
address tixFoundersDepositAddress;
address tixPromoDepositAddress;
address tixPresaleDepositAddress;

function tixPromoDeposit() {
    return tixPromoDepositAddress
}

function totalSupply() {
    return totalSupply
}

function endTime() {
    return endTime
}

function tokenExchangeRate() {
    return tokenExchangeRate
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function tixFundDeposit() {
    return tixFundDepositAddress
}

function isFinalized() {
    return bool(stor4)
}

function tixFoundersDeposit() {
    return tixFoundersDepositAddress
}

function ethFundDeposit() {
    return ethFundDepositAddress
}

function tixPresaleDeposit() {
    return tixPresaleDepositAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require stor4
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function finalize() {
    require not stor4
    require ethFundDepositAddress == msg.sender
    if block.timestamp <= endTime:
        require 62500000 * 10^18 == totalSupply
    stor4 = 1
    call ethFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor4
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function _fallback() payable {
    require not stor4
    require block.timestamp >= startTime
    require block.timestamp < endTime
    require msg.value > 0
    require totalSupply != 62500000 * 10^18
    if msg.value:
        require msg.value
        require tokenExchangeRate * msg.value / msg.value == tokenExchangeRate
    require (tokenExchangeRate * msg.value) + totalSupply >= totalSupply
    if tokenExchangeRate == 1041:
        if 62500000 * 10^18 >= (tokenExchangeRate * msg.value) + totalSupply:
            totalSupply += tokenExchangeRate * msg.value
            balanceOf[address(msg.sender)] += tokenExchangeRate * msg.value
            emit CreateTIX((tokenExchangeRate * msg.value), msg.sender);
        else:
            require 62500000 * 10^18 <= (tokenExchangeRate * msg.value) + totalSupply
            require (tokenExchangeRate * msg.value) + totalSupply - 62500000 * 10^18 <= 10^12
            require (tokenExchangeRate * msg.value) + totalSupply - 62500000 * 10^18 <= tokenExchangeRate * msg.value
            totalSupply = (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + 62500000 * 10^18
            balanceOf[address(msg.sender)] = (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + -totalSupply + balanceOf[address(msg.sender)] + 62500000 * 10^18
            emit CreateTIX(((tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + -totalSupply + 62500000 * 10^18), msg.sender);
    else:
        if 52500000 * 10^18 >= (tokenExchangeRate * msg.value) + totalSupply:
            if 62500000 * 10^18 >= (tokenExchangeRate * msg.value) + totalSupply:
                totalSupply += tokenExchangeRate * msg.value
                balanceOf[address(msg.sender)] += tokenExchangeRate * msg.value
                emit CreateTIX((tokenExchangeRate * msg.value), msg.sender);
            else:
                require 62500000 * 10^18 <= (tokenExchangeRate * msg.value) + totalSupply
                require (tokenExchangeRate * msg.value) + totalSupply - 62500000 * 10^18 <= 10^12
                require (tokenExchangeRate * msg.value) + totalSupply - 62500000 * 10^18 <= tokenExchangeRate * msg.value
                totalSupply = (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + 62500000 * 10^18
                balanceOf[address(msg.sender)] = (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + -totalSupply + balanceOf[address(msg.sender)] + 62500000 * 10^18
                emit CreateTIX(((tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + -totalSupply + 62500000 * 10^18), msg.sender);
        else:
            require 52500000 * 10^18 <= (tokenExchangeRate * msg.value) + totalSupply
            require (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 <= tokenExchangeRate * msg.value
            tokenExchangeRate = 1041
            if (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250:
                require (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250
                require tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250 / (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250 == tokenExchangeRate
            require tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250 >= 0
            require (tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + 52500000 * 10^18 >= totalSupply
            if 62500000 * 10^18 >= (tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + 52500000 * 10^18:
                totalSupply = (tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + 52500000 * 10^18
                balanceOf[address(msg.sender)] = (tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + -totalSupply + balanceOf[address(msg.sender)] + 52500000 * 10^18
                emit CreateTIX(((tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + -totalSupply + 52500000 * 10^18), msg.sender);
            else:
                require 62500000 * 10^18 <= (tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + 52500000 * 10^18
                require (tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) - 10000000 * 10^18 <= 10^12
                require -10000000 * 10^18 <= -totalSupply + 52500000 * 10^18
                totalSupply = (tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (-1 * tokenExchangeRate * msg.value) + (tokenExchangeRate * msg.value) + 62500000 * 10^18
                balanceOf[address(msg.sender)] = (tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + -totalSupply + (-1 * tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (-1 * tokenExchangeRate * msg.value) + (tokenExchangeRate * msg.value) + balanceOf[address(msg.sender)] + 62500000 * 10^18
                emit CreateTIX(((tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + -totalSupply + (-1 * tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (-1 * tokenExchangeRate * msg.value) + (tokenExchangeRate * msg.value) + 62500000 * 10^18), msg.sender);
}

function generateTokens() payable {
    require not stor4
    require block.timestamp >= startTime
    require block.timestamp < endTime
    require msg.value > 0
    require totalSupply != 62500000 * 10^18
    if msg.value:
        require msg.value
        require tokenExchangeRate * msg.value / msg.value == tokenExchangeRate
    require (tokenExchangeRate * msg.value) + totalSupply >= totalSupply
    if tokenExchangeRate == 1041:
        if 62500000 * 10^18 >= (tokenExchangeRate * msg.value) + totalSupply:
            totalSupply += tokenExchangeRate * msg.value
            balanceOf[address(msg.sender)] += tokenExchangeRate * msg.value
            emit CreateTIX((tokenExchangeRate * msg.value), msg.sender);
        else:
            require 62500000 * 10^18 <= (tokenExchangeRate * msg.value) + totalSupply
            require (tokenExchangeRate * msg.value) + totalSupply - 62500000 * 10^18 <= 10^12
            require (tokenExchangeRate * msg.value) + totalSupply - 62500000 * 10^18 <= tokenExchangeRate * msg.value
            totalSupply = (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + 62500000 * 10^18
            balanceOf[address(msg.sender)] = (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + -totalSupply + balanceOf[address(msg.sender)] + 62500000 * 10^18
            emit CreateTIX(((tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + -totalSupply + 62500000 * 10^18), msg.sender);
    else:
        if 52500000 * 10^18 >= (tokenExchangeRate * msg.value) + totalSupply:
            if 62500000 * 10^18 >= (tokenExchangeRate * msg.value) + totalSupply:
                totalSupply += tokenExchangeRate * msg.value
                balanceOf[address(msg.sender)] += tokenExchangeRate * msg.value
                emit CreateTIX((tokenExchangeRate * msg.value), msg.sender);
            else:
                require 62500000 * 10^18 <= (tokenExchangeRate * msg.value) + totalSupply
                require (tokenExchangeRate * msg.value) + totalSupply - 62500000 * 10^18 <= 10^12
                require (tokenExchangeRate * msg.value) + totalSupply - 62500000 * 10^18 <= tokenExchangeRate * msg.value
                totalSupply = (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + 62500000 * 10^18
                balanceOf[address(msg.sender)] = (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + -totalSupply + balanceOf[address(msg.sender)] + 62500000 * 10^18
                emit CreateTIX(((tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + -totalSupply + 62500000 * 10^18), msg.sender);
        else:
            require 52500000 * 10^18 <= (tokenExchangeRate * msg.value) + totalSupply
            require (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 <= tokenExchangeRate * msg.value
            tokenExchangeRate = 1041
            if (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250:
                require (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250
                require tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250 / (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250 == tokenExchangeRate
            require tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250 >= 0
            require (tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + 52500000 * 10^18 >= totalSupply
            if 62500000 * 10^18 >= (tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + 52500000 * 10^18:
                totalSupply = (tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + 52500000 * 10^18
                balanceOf[address(msg.sender)] = (tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + -totalSupply + balanceOf[address(msg.sender)] + 52500000 * 10^18
                emit CreateTIX(((tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + -totalSupply + 52500000 * 10^18), msg.sender);
            else:
                require 62500000 * 10^18 <= (tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + 52500000 * 10^18
                require (tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) - 10000000 * 10^18 <= 10^12
                require -10000000 * 10^18 <= -totalSupply + 52500000 * 10^18
                totalSupply = (tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (-1 * tokenExchangeRate * msg.value) + (tokenExchangeRate * msg.value) + 62500000 * 10^18
                balanceOf[address(msg.sender)] = (tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + -totalSupply + (-1 * tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (-1 * tokenExchangeRate * msg.value) + (tokenExchangeRate * msg.value) + balanceOf[address(msg.sender)] + 62500000 * 10^18
                emit CreateTIX(((tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (tokenExchangeRate * msg.value) + (-1 * tokenExchangeRate * msg.value) + -totalSupply + (-1 * tokenExchangeRate * (tokenExchangeRate * msg.value) + totalSupply - 52500000 * 10^18 / 1250) + (-1 * tokenExchangeRate * msg.value) + (tokenExchangeRate * msg.value) + 62500000 * 10^18), msg.sender);
}



}
