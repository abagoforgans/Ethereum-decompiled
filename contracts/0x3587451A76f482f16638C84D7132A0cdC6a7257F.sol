contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
address stor4;
address stor5;
address stor6;
address stor7;
uint8 stor12;
uint256 stor12; offset 8
uint256 stor13;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = '1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor13 = 1500
    require not msg.value
    uint8(stor12.field_0) = 0
    Mask(248, 0, stor12.field_8) = 0
    stor5 = 0x433ca85c0801aedeadfdd040d30c1da959b650fc
    stor6 = 0xb1c04a38d8757a1e5be8b814266c1529718f8910
    stor7 = 0x7cddb041a64b260b7043250a453b10b10507a61a
    stor4 = 0x23ce447b2ff798b7cd95abd690d0c41d6ad737d0
    stor0 = 25 * 10^13
    require stor0 + 15 * 10^13 >= stor0
    require stor0 + 15 * 10^13 >= 15 * 10^13
    stor0 += 15 * 10^13
    stor1[stor6] = 5 * 10^13
    stor1[stor7] = 5 * 10^13
    stor1[stor5] = 15 * 10^13
    emit 0xccee682a: 5 * 10^13, stor6
    emit 0xccee682a: 5 * 10^13, stor7
    emit 0xccee682a: 15 * 10^13, stor5
    return code.data[1594 len 5432]
}



// =====================  Runtime code  =====================


const name = 'SimonCoin'

const sub_24443c1c(?) = 15 * 10^13

const decimals = 6

const tokenCreationCap = 5 * 10^14

const symbol = 'Simon'

const sub_d1287017(?) = 5 * 10^13


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address ethFundDepositAddress;
address sub_342eddb3Address;
address sub_c62e049cAddress;
address sub_891ace6eAddress;
uint256 firstStage;
uint256 secondStage;
uint256 thirdStage;
uint256 fourthStage;
uint8 stor12;
uint8 stor12; offset 8
uint256 stor12; offset 8
uint256 tokenExchangeRate;

function totalSupply() {
    return totalSupply
}

function sub_342eddb3(?) {
    return sub_342eddb3Address
}

function tokenExchangeRate() {
    return tokenExchangeRate
}

function version() {
    return version[0 len version.length]
}

function saleStarted() {
    return bool(uint8(stor12.field_8))
}

function thirdStage() {
    return thirdStage
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function secondStage() {
    return secondStage
}

function sub_891ace6e(?) {
    return sub_891ace6eAddress
}

function isFinalized() {
    return bool(uint8(stor12.field_0))
}

function ethFundDeposit() {
    return ethFundDepositAddress
}

function sub_c62e049c(?) {
    return sub_c62e049cAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function firstStage() {
    return firstStage
}

function fourthStage() {
    return fourthStage
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
    require not uint8(stor12.field_8)
    require msg.sender == ethFundDepositAddress
    firstStage = block.timestamp + (360 * 24 * 3600)
    secondStage = firstStage + (360 * 24 * 3600)
    thirdStage = secondStage + (168 * 24 * 3600)
    fourthStage = thirdStage + (144 * 24 * 3600)
    Mask(248, 0, stor12.field_8) = 1
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
    require not uint8(stor12.field_0)
    require msg.sender == ethFundDepositAddress
    if totalSupply < 5 * 10^14:
        require 5 * 10^14 >= totalSupply
        require 5 * 10^14 >= -totalSupply + 5 * 10^14
        totalSupply = 5 * 10^14
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -totalSupply + 5 * 10^14
        emit 0xccee682a: (-totalSupply + 5 * 10^14), msg.sender
    call ethFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    uint8(stor12.field_0) = 1
}

function _fallback() payable {
    require not uint8(stor12.field_0)
    require uint8(stor12.field_8)
    require msg.value
    if block.timestamp <= firstStage:
        if block.timestamp <= secondStage:
            if block.timestamp <= thirdStage:
                if block.timestamp > fourthStage:
                    tokenExchangeRate = 1000
            else:
                if block.timestamp > fourthStage:
                    tokenExchangeRate = 1000
                else:
                    tokenExchangeRate = 1500
        else:
            if block.timestamp > thirdStage:
                if block.timestamp > fourthStage:
                    tokenExchangeRate = 1000
                else:
                    tokenExchangeRate = 1500
            else:
                tokenExchangeRate = 1750
                if block.timestamp > fourthStage:
                    tokenExchangeRate = 1000
    else:
        if block.timestamp > secondStage:
            if block.timestamp > thirdStage:
                if block.timestamp > fourthStage:
                    tokenExchangeRate = 1000
                else:
                    tokenExchangeRate = 1500
            else:
                tokenExchangeRate = 1750
                if block.timestamp > fourthStage:
                    tokenExchangeRate = 1000
        else:
            tokenExchangeRate = 2000
            if block.timestamp <= thirdStage:
                if block.timestamp > fourthStage:
                    tokenExchangeRate = 1000
            else:
                if block.timestamp > fourthStage:
                    tokenExchangeRate = 1000
                else:
                    tokenExchangeRate = 1500
    if msg.value:
        require msg.value
        require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
    require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
    require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
    require 5 * 10^14 >= totalSupply + (msg.value * tokenExchangeRate)
    totalSupply += msg.value * tokenExchangeRate
    balanceOf[address(msg.sender)] += msg.value * tokenExchangeRate
    emit 0xccee682a: (msg.value * tokenExchangeRate), msg.sender
}



}
