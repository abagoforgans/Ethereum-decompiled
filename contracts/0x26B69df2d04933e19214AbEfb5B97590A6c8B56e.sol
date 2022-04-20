contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor3;
address stor4;
address stor5;
address stor6;
uint128 stor7; offset 184
uint128 stor7; offset 176
uint128 stor7; offset 168
uint128 stor7; offset 160
address stor7;
uint256 stor10;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = '1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor10 = 0
    require not msg.value
    Mask(96, 0, stor7.field_160) = 0
    stor4 = 0x42c56afa86b94c90a31555c47e858bb2590ef579
    stor5 = 0x2c97cdb0220dccf25f747df7bf31869c3435376d
    stor6 = 0x81298da45b468a0229adc46997d98cfa3e7abf7f
    address(stor7.field_0) = 0x8a9825923f6d2fb093a81300cf6deaad9c4efd28
    Mask(80, 0, stor7.field_176) = 0
    Mask(88, 0, stor7.field_168) = 0
    Mask(72, 0, stor7.field_184) = 0
    stor0 = 0
    return code.data[751 len 6490]
}



// =====================  Runtime code  =====================


const name = 'marketChain'

const decimals = 18

const tokenPreSaleCap = 50000000 * 10^18

const tokenSaleCap = 155000000 * 10^18

const symbol = 'MAC'


bool stor0;
uint256 stor0;
uint256 stor0; offset 1
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address sub_e40f1f38Address;
address account1Address;
address account2Address;
uint8 stor7; offset 160
uint8 stor7; offset 168
uint8 stor7; offset 176
uint8 stor7; offset 184
uint128 stor7; offset 184
uint128 stor7; offset 176
uint128 stor7; offset 168
uint128 stor7; offset 160
address creatorAddress;
uint256 preSalePeriod;
uint256 prePreSalePeriod;
uint256 tokenExchangeRate;

function account2Address() {
    return account2Address
}

function isPrePreSale() {
    return bool(uint8(stor7.field_176))
}

function totalSupply() {
    return totalSupply
}

function preSalePeriod() {
    return preSalePeriod
}

function tokenExchangeRate() {
    return tokenExchangeRate
}

function isPreSale() {
    return bool(uint8(stor7.field_168))
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isFinalized() {
    return bool(uint8(stor7.field_160))
}

function account1Address() {
    return account1Address
}

function isMainSale() {
    return bool(uint8(stor7.field_184))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e40f1f38(?) {
    return sub_e40f1f38Address
}

function prePreSalePeriod() {
    return prePreSalePeriod
}

function creatorAddress() {
    return creatorAddress
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

function _fallback() payable {
    require not uint8(stor7.field_160)
    if not uint8(stor7.field_176):
        if not uint8(stor7.field_168):
            require uint8(stor7.field_184)
    require msg.value
    require msg.value
    require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
    require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
    require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
    if not uint8(stor7.field_184):
        require 50000000 * 10^18 >= totalSupply + (msg.value * tokenExchangeRate)
    require 155000000 * 10^18 >= totalSupply + (msg.value * tokenExchangeRate)
    totalSupply += msg.value * tokenExchangeRate
    balanceOf[address(msg.sender)] += msg.value * tokenExchangeRate
    emit 0xdfd03174: (msg.value * tokenExchangeRate), msg.sender
}

function switchSaleStage() {
    require msg.sender == sub_e40f1f38Address
    require not uint8(stor7.field_184)
    if not uint8(stor7.field_176):
        Mask(80, 0, stor7.field_176) = 1
        tokenExchangeRate = 1150
    else:
        if not uint8(stor7.field_168):
            Mask(88, 0, stor7.field_168) = 1
            tokenExchangeRate = 1000
        else:
            if not uint8(stor7.field_184):
                Mask(72, 0, stor7.field_184) = 1
                if totalSupply < 10000000 * 10^18:
                    tokenExchangeRate = 750
                else:
                    if totalSupply < 20000000 * 10^18:
                        tokenExchangeRate = 700
                    else:
                        if totalSupply < 30000000 * 10^18:
                            tokenExchangeRate = 650
                        else:
                            if totalSupply < 40000000 * 10^18:
                                tokenExchangeRate = 620
                            else:
                                if totalSupply <= 50000000 * 10^18:
                                    tokenExchangeRate = 600
}

function finalize() {
    require not uint8(stor7.field_160)
    require msg.sender == sub_e40f1f38Address
    require 2 * totalSupply >= totalSupply
    bool(stor0.field_0) = 0
    uint255(stor0.field_1) = uint255(stor0.field_0)
    if bool(stor0.field_0):
        balanceOf[stor5] = balanceOf[stor5] + (totalSupply - 1 / 2) - 10000 * 10^18
        balanceOf[stor6] = balanceOf[stor6] + (totalSupply - 1 / 2) + 1
        balanceOf[address(stor7.field_0)] += 10000 * 10^18
        emit 0xdfd03174: 10000 * 10^18, creatorAddress
        emit 0xdfd03174: ((totalSupply - 1 / 2) - 10000 * 10^18), account1Address
        emit 0xdfd03174: ((totalSupply - 1 / 2) + 1), account2Address
    else:
        balanceOf[stor5] = balanceOf[stor5] + uint255(stor0.field_1) - 10000 * 10^18
        balanceOf[stor6] += uint255(stor0.field_1)
        balanceOf[address(stor7.field_0)] += 10000 * 10^18
        emit 0xdfd03174: 10000 * 10^18, creatorAddress
        emit 0xdfd03174: (uint255(stor0.field_1) - 10000 * 10^18), account1Address
        emit 0xdfd03174: uint255(stor0.field_1), account2Address
    call sub_e40f1f38Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    Mask(96, 0, stor7.field_160) = 1
}



}
