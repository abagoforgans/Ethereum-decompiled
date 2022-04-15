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
    stor4 = 0x13af31dc76255d3b33d2185a7148300882ebc7a
    stor5 = 0xe0f2653e7928e6cb7c6d3206163b3e466a29c7c3
    stor6 = 0x25bc70bfda877e1534151cb92d97ac5e69e1f53d
    address(stor7.field_0) = 0x953ebf6c38c58c934d58b9b17d8f9d0f121218bb
    Mask(80, 0, stor7.field_176) = 0
    Mask(88, 0, stor7.field_168) = 0
    Mask(72, 0, stor7.field_184) = 0
    stor0 = 0
    return code.data[752 len 6501]
}



// =====================  Runtime code  =====================


const name = 'LockChain'

const decimals = 18

const tokenPreSaleCap = 50000000 * 10^18

const tokenSaleCap = 155000000 * 10^18

const symbol = 'LOK'


bool stor0;
uint256 stor0;
uint256 stor0; offset 1
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address lockChainFundDepositAddress;
address account1Address;
address account2Address;
uint8 isFinalized; offset 160
uint8 isPreSale; offset 168
uint8 isPrePreSale; offset 176
uint8 isMainSale; offset 184
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
    return bool(isPrePreSale)
}

function totalSupply() {
    return totalSupply
}

function preSalePeriod() {
    return preSalePeriod
}

function LockChainFundDeposit() {
    return lockChainFundDepositAddress
}

function tokenExchangeRate() {
    return tokenExchangeRate
}

function isPreSale() {
    return bool(isPreSale)
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isFinalized() {
    return bool(isFinalized)
}

function account1Address() {
    return account1Address
}

function isMainSale() {
    return bool(isMainSale)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
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
    require not isFinalized
    if not isPrePreSale:
        if not isPreSale:
            require isMainSale
    require msg.value
    require msg.value
    require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
    require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
    require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
    if not isMainSale:
        require 50000000 * 10^18 >= totalSupply + (msg.value * tokenExchangeRate)
    require 155000000 * 10^18 >= totalSupply + (msg.value * tokenExchangeRate)
    totalSupply += msg.value * tokenExchangeRate
    balanceOf[address(msg.sender)] += msg.value * tokenExchangeRate
    emit CreateLOK((msg.value * tokenExchangeRate), msg.sender);
}

function switchSaleStage() {
    require msg.sender == lockChainFundDepositAddress
    require not isMainSale
    if not isPrePreSale:
        Mask(80, 0, stor7.field_176) = 1
        tokenExchangeRate = 1150
    else:
        if not isPreSale:
            Mask(88, 0, stor7.field_168) = 1
            tokenExchangeRate = 1000
        else:
            if not isMainSale:
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
    require not isFinalized
    require msg.sender == lockChainFundDepositAddress
    require 2 * totalSupply >= totalSupply
    bool(stor0.field_0) = 0
    uint255(stor0.field_1) = uint255(stor0.field_0)
    if bool(stor0.field_0):
        balanceOf[stor5] = balanceOf[stor5] + (totalSupply - 1 / 2) - 10000 * 10^18
        balanceOf[stor6] = balanceOf[stor6] + (totalSupply - 1 / 2) + 1
        balanceOf[address(stor7.field_0)] += 10000 * 10^18
        emit CreateLOK(10000 * 10^18, creatorAddress);
        emit CreateLOK(((totalSupply - 1 / 2) - 10000 * 10^18), account1Address);
        emit CreateLOK(((totalSupply - 1 / 2) + 1), account2Address);
    else:
        balanceOf[stor5] = balanceOf[stor5] + uint255(stor0.field_1) - 10000 * 10^18
        balanceOf[stor6] += uint255(stor0.field_1)
        balanceOf[address(stor7.field_0)] += 10000 * 10^18
        emit CreateLOK(10000 * 10^18, creatorAddress);
        emit CreateLOK((uint255(stor0.field_1) - 10000 * 10^18), account1Address);
        emit CreateLOK(uint255(stor0.field_1), account2Address);
    call lockChainFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    Mask(96, 0, stor7.field_160) = 1
}



}
