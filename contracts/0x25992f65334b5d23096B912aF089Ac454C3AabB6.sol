contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


const name = 'Edge Smart Token'

const totalSupply = 100000000 * 10^18

const decimals = 18

const _decimals = 18

const _totalSupply = 100000000 * 10^18

const symbol = 'EST'


mapping of uint256 balances;
mapping of uint256 allowance;
address stor2;
address stor3;
uint256 totalTokensSold;
uint256 preSaleTokensSold;
uint256 icoTokensSold;
uint256 totalTokensCap;
uint256 preSaleTokensLimit;
uint256 icoSaleSoftCap;
uint256 icoSaleHardCap;
uint256 stor11;
uint256 stor12;
uint8 stor13;
uint8 stor13; offset 8
uint256 stor13; offset 8
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
address stor18;

function preSaleTokensLimit() {
    return preSaleTokensLimit
}

function icoSaleHardCap() {
    return icoSaleHardCap
}

function balances(address arg1) {
    return balances[arg1]
}

function getPreSaleTokensSold() {
    return preSaleTokensSold
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function getTotalTokensSold() {
    return totalTokensSold
}

function icoSaleSoftCap() {
    return icoSaleSoftCap
}

function getIcoTokensSold() {
    return icoTokensSold
}

function totalTokensCap() {
    return totalTokensCap
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setIcoEndDate(uint256 arg1) {
    require msg.sender == stor3
    stor15 = arg1
}

function unapprove(address arg1) {
    allowance[address(msg.sender)][address(arg1)] = 0
}

function setPreSaleStatus(bool arg1) {
    require msg.sender == stor3
    uint8(stor13.field_0) = uint8(arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == stor3
    require arg1 != stor2
    stor2 = arg1
}

function setICOStatus(bool arg1) {
    require msg.sender == stor3
    Mask(248, 0, stor13.field_8) = Mask(248, 0, arg1)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balances[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balances[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function createTokens(address arg1) payable {
    require block.timestamp < stor16
    if not uint8(stor13.field_0):
        require uint8(stor13.field_8)
        require block.timestamp < stor15
        require msg.value >= 10^17
        if 10^18 * msg.value:
            require 10^18 * msg.value
            require 10^18 * msg.value * stor12 / 10^18 * msg.value == stor12
        require 10^18 * msg.value * stor12 == (1000000000000000000 * 10^18 * 10^18 * msg.value * stor12 / 1000000000000000000 * 10^18) + (10^18 * msg.value * stor12 % 1000000000000000000 * 10^18)
        stor17 = 10^18 * msg.value * stor12 / 1000000000000000000 * 10^18
        require totalTokensSold + stor17 <= totalTokensCap
        require icoTokensSold + stor17 >= icoTokensSold
        icoTokensSold += stor17
    else:
        if block.timestamp < stor14:
            require msg.value >= 10^18
            if 10^18 * msg.value:
                require 10^18 * msg.value
                require 10^18 * msg.value * stor11 / 10^18 * msg.value == stor11
            require 10^18 * msg.value * stor11 == (1000000000000000000 * 10^18 * 10^18 * msg.value * stor11 / 1000000000000000000 * 10^18) + (10^18 * msg.value * stor11 % 1000000000000000000 * 10^18)
            stor17 = 10^18 * msg.value * stor11 / 1000000000000000000 * 10^18
            require preSaleTokensSold + stor17 <= preSaleTokensLimit
            require totalTokensSold + stor17 <= totalTokensCap
            require preSaleTokensSold + stor17 >= preSaleTokensSold
            preSaleTokensSold += stor17
        else:
            require uint8(stor13.field_8)
            require block.timestamp < stor15
            require msg.value >= 10^17
            if 10^18 * msg.value:
                require 10^18 * msg.value
                require 10^18 * msg.value * stor12 / 10^18 * msg.value == stor12
            require 10^18 * msg.value * stor12 == (1000000000000000000 * 10^18 * 10^18 * msg.value * stor12 / 1000000000000000000 * 10^18) + (10^18 * msg.value * stor12 % 1000000000000000000 * 10^18)
            stor17 = 10^18 * msg.value * stor12 / 1000000000000000000 * 10^18
            require totalTokensSold + stor17 <= totalTokensCap
            require icoTokensSold + stor17 >= icoTokensSold
            icoTokensSold += stor17
    require totalTokensSold + stor17 >= totalTokensSold
    totalTokensSold += stor17
    require balances[address(arg1)] + stor17 >= balances[address(arg1)]
    balances[address(arg1)] += stor17
    require stor17 <= balances[stor3]
    balances[stor3] -= stor17
    emit Transfer(stor17, stor3, arg1);
    call stor18 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp < stor16
    if not uint8(stor13.field_0):
        require uint8(stor13.field_8)
        require block.timestamp < stor15
        require msg.value >= 10^17
        if 10^18 * msg.value:
            require 10^18 * msg.value
            require 10^18 * msg.value * stor12 / 10^18 * msg.value == stor12
        require 10^18 * msg.value * stor12 == (1000000000000000000 * 10^18 * 10^18 * msg.value * stor12 / 1000000000000000000 * 10^18) + (10^18 * msg.value * stor12 % 1000000000000000000 * 10^18)
        stor17 = 10^18 * msg.value * stor12 / 1000000000000000000 * 10^18
        require totalTokensSold + stor17 <= totalTokensCap
        require icoTokensSold + stor17 >= icoTokensSold
        icoTokensSold += stor17
    else:
        if block.timestamp < stor14:
            require msg.value >= 10^18
            if 10^18 * msg.value:
                require 10^18 * msg.value
                require 10^18 * msg.value * stor11 / 10^18 * msg.value == stor11
            require 10^18 * msg.value * stor11 == (1000000000000000000 * 10^18 * 10^18 * msg.value * stor11 / 1000000000000000000 * 10^18) + (10^18 * msg.value * stor11 % 1000000000000000000 * 10^18)
            stor17 = 10^18 * msg.value * stor11 / 1000000000000000000 * 10^18
            require preSaleTokensSold + stor17 <= preSaleTokensLimit
            require totalTokensSold + stor17 <= totalTokensCap
            require preSaleTokensSold + stor17 >= preSaleTokensSold
            preSaleTokensSold += stor17
        else:
            require uint8(stor13.field_8)
            require block.timestamp < stor15
            require msg.value >= 10^17
            if 10^18 * msg.value:
                require 10^18 * msg.value
                require 10^18 * msg.value * stor12 / 10^18 * msg.value == stor12
            require 10^18 * msg.value * stor12 == (1000000000000000000 * 10^18 * 10^18 * msg.value * stor12 / 1000000000000000000 * 10^18) + (10^18 * msg.value * stor12 % 1000000000000000000 * 10^18)
            stor17 = 10^18 * msg.value * stor12 / 1000000000000000000 * 10^18
            require totalTokensSold + stor17 <= totalTokensCap
            require icoTokensSold + stor17 >= icoTokensSold
            icoTokensSold += stor17
    require totalTokensSold + stor17 >= totalTokensSold
    totalTokensSold += stor17
    require balances[address(msg.sender)] + stor17 >= balances[address(msg.sender)]
    balances[address(msg.sender)] += stor17
    require stor17 <= balances[stor3]
    balances[stor3] -= stor17
    emit Transfer(stor17, stor3, msg.sender);
    call stor18 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
