contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
address stor4;
address stor5;
uint128 stor6; offset 168
uint128 stor6; offset 160
address stor6;
uint256 stor12;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = '1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor12 = 55
    require not msg.value
    Mask(96, 0, stor6.field_160) = 0
    Mask(88, 0, stor6.field_168) = 0
    stor5 = 0xca0664cc0c1e1ee6cf4507670c9060e03f16f508
    address(stor6.field_0) = 0x7a0b7a6c058b354697fbc5e641c372e877593631
    stor4 = 0xff0b05152a8477a92e5774685667e32484a76f6a
    stor0 = 25000000 * 10^18
    stor1[stor5] = 12500000 * 10^18
    stor1[address(stor6.field_0)] = 12500000 * 10^18
    emit CreatePHX(12500000 * 10^18, stor5);
    emit CreatePHX(12500000 * 10^18, address(stor6.field_0));
    return code.data[1096 len 5464]
}



// =====================  Runtime code  =====================


const name = 'Phoenix'

const decimals = 18

const tokenPreSaleCap = 37500000 * 10^18

const tokenCreationCap = 50000000 * 10^18

const PhoenixExchangeFund = 12500000 * 10^18

const symbol = 'PHX'

const PhoenixFund = 12500000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address ethFundDepositAddress;
address phoenixFundDepositAddress;
uint8 stor6; offset 160
uint8 stor6; offset 168
uint128 stor6; offset 168
uint128 stor6; offset 160
address phoenixExchangeDepositAddress;
uint256 firstWeek;
uint256 secondWeek;
uint256 thirdWeek;
uint256 fourthWeek;
uint256 bonus;
uint256 tokenExchangeRate;

function fourthWeek() {
    return fourthWeek
}

function totalSupply() {
    return totalSupply
}

function tokenExchangeRate() {
    return tokenExchangeRate
}

function PhoenixExchangeDeposit() {
    return phoenixExchangeDepositAddress
}

function version() {
    return version[0 len version.length]
}

function saleStarted() {
    return bool(uint8(stor6.field_168))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function bonus() {
    return bonus
}

function firstWeek() {
    return firstWeek
}

function PhoenixFundDeposit() {
    return phoenixFundDepositAddress
}

function isFinalized() {
    return bool(uint8(stor6.field_160))
}

function ethFundDeposit() {
    return ethFundDepositAddress
}

function secondWeek() {
    return secondWeek
}

function thirdWeek() {
    return thirdWeek
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function startSale() {
    require not uint8(stor6.field_168)
    require msg.sender == ethFundDepositAddress
    firstWeek = block.timestamp + (168 * 24 * 3600)
    secondWeek = firstWeek + (168 * 24 * 3600)
    thirdWeek = secondWeek + (168 * 24 * 3600)
    fourthWeek = thirdWeek + (168 * 24 * 3600)
    Mask(88, 0, stor6.field_168) = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function finalize() {
    require not uint8(stor6.field_160)
    require msg.sender == ethFundDepositAddress
    if totalSupply < 50000000 * 10^18:
        require 50000000 * 10^18 >= totalSupply
        require 50000000 * 10^18 >= -totalSupply + 50000000 * 10^18
        totalSupply = 50000000 * 10^18
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -totalSupply + 50000000 * 10^18
        emit CreatePHX((-totalSupply + 50000000 * 10^18), msg.sender);
    call ethFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    Mask(96, 0, stor6.field_160) = 1
}

function _fallback() payable {
    require not uint8(stor6.field_160)
    require uint8(stor6.field_168)
    require msg.value
    if block.timestamp <= firstWeek:
        if block.timestamp <= secondWeek:
            if block.timestamp <= thirdWeek:
                if block.timestamp <= fourthWeek:
                    if msg.value:
                        require msg.value
                        require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                    require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                    require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                    require 37500000 * 10^18 >= totalSupply + (msg.value * tokenExchangeRate)
                else:
                    tokenExchangeRate = 18
                    if msg.value:
                        require msg.value
                        require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                    require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                    require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
            else:
                if block.timestamp >= fourthWeek:
                    if block.timestamp <= fourthWeek:
                        if msg.value:
                            require msg.value
                            require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                        require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                        require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                        require 37500000 * 10^18 >= totalSupply + (msg.value * tokenExchangeRate)
                    else:
                        tokenExchangeRate = 18
                        if msg.value:
                            require msg.value
                            require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                        require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                        require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                else:
                    tokenExchangeRate = 25
                    if msg.value:
                        require msg.value
                        require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                    require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                    require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                    require 37500000 * 10^18 >= totalSupply + (msg.value * tokenExchangeRate)
        else:
            if block.timestamp < thirdWeek:
                tokenExchangeRate = 29
                if msg.value:
                    require msg.value
                    require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                require 37500000 * 10^18 >= totalSupply + (msg.value * tokenExchangeRate)
            else:
                if block.timestamp <= thirdWeek:
                    if block.timestamp <= fourthWeek:
                        if msg.value:
                            require msg.value
                            require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                        require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                        require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                        require 37500000 * 10^18 >= totalSupply + (msg.value * tokenExchangeRate)
                    else:
                        tokenExchangeRate = 18
                        if msg.value:
                            require msg.value
                            require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                        require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                        require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                else:
                    if block.timestamp >= fourthWeek:
                        if block.timestamp <= fourthWeek:
                            if msg.value:
                                require msg.value
                                require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                            require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                            require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                            require 37500000 * 10^18 >= totalSupply + (msg.value * tokenExchangeRate)
                        else:
                            tokenExchangeRate = 18
                            if msg.value:
                                require msg.value
                                require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                            require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                            require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                    else:
                        tokenExchangeRate = 25
                        if msg.value:
                            require msg.value
                            require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                        require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                        require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                        require 37500000 * 10^18 >= totalSupply + (msg.value * tokenExchangeRate)
    else:
        if block.timestamp < secondWeek:
            tokenExchangeRate = 41
            if msg.value:
                require msg.value
                require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
            require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
            require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
            require 37500000 * 10^18 >= totalSupply + (msg.value * tokenExchangeRate)
        else:
            if block.timestamp <= secondWeek:
                if block.timestamp <= thirdWeek:
                    if block.timestamp <= fourthWeek:
                        if msg.value:
                            require msg.value
                            require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                        require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                        require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                        require 37500000 * 10^18 >= totalSupply + (msg.value * tokenExchangeRate)
                    else:
                        tokenExchangeRate = 18
                        if msg.value:
                            require msg.value
                            require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                        require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                        require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                else:
                    if block.timestamp >= fourthWeek:
                        if block.timestamp <= fourthWeek:
                            if msg.value:
                                require msg.value
                                require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                            require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                            require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                            require 37500000 * 10^18 >= totalSupply + (msg.value * tokenExchangeRate)
                        else:
                            tokenExchangeRate = 18
                            if msg.value:
                                require msg.value
                                require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                            require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                            require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                    else:
                        tokenExchangeRate = 25
                        if msg.value:
                            require msg.value
                            require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                        require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                        require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                        require 37500000 * 10^18 >= totalSupply + (msg.value * tokenExchangeRate)
            else:
                if block.timestamp < thirdWeek:
                    tokenExchangeRate = 29
                    if msg.value:
                        require msg.value
                        require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                    require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                    require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                    require 37500000 * 10^18 >= totalSupply + (msg.value * tokenExchangeRate)
                else:
                    if block.timestamp <= thirdWeek:
                        if block.timestamp <= fourthWeek:
                            if msg.value:
                                require msg.value
                                require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                            require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                            require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                            require 37500000 * 10^18 >= totalSupply + (msg.value * tokenExchangeRate)
                        else:
                            tokenExchangeRate = 18
                            if msg.value:
                                require msg.value
                                require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                            require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                            require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                    else:
                        if block.timestamp >= fourthWeek:
                            if block.timestamp <= fourthWeek:
                                if msg.value:
                                    require msg.value
                                    require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                                require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                                require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                                require 37500000 * 10^18 >= totalSupply + (msg.value * tokenExchangeRate)
                            else:
                                tokenExchangeRate = 18
                                if msg.value:
                                    require msg.value
                                    require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                                require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                                require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                        else:
                            tokenExchangeRate = 25
                            if msg.value:
                                require msg.value
                                require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
                            require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
                            require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
                            require 37500000 * 10^18 >= totalSupply + (msg.value * tokenExchangeRate)
    require 50000000 * 10^18 >= totalSupply + (msg.value * tokenExchangeRate)
    totalSupply += msg.value * tokenExchangeRate
    balanceOf[address(msg.sender)] += msg.value * tokenExchangeRate
    emit CreatePHX((msg.value * tokenExchangeRate), msg.sender);
}



}
