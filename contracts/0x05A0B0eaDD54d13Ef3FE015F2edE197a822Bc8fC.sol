contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor2;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
uint256 stor7;
uint8 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
bool stor14;
uint256 stor14; offset 1
uint256 stor15;
uint256 stor16;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 9
    stor4.length.field_8 = 'ThankYou!' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 18
    stor9 = 1
    stor10 = 50 * 10^stor7
    stor11 = 0
    stor12 = 10000 * 10^stor7
    stor13 = 0
    bool(stor14.field_0) = 0
    uint255(stor14.field_1) = uint255(10^stor7)
    stor15 = 0
    stor16 = 0
    require not msg.value
    stor0 = msg.sender
    bool(stor5.length) = 0
    stor5.length.field_1 = 15
    stor5.length.field_8 = 'ThankYou! Token' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 3
    stor6.length.field_8 = 'TYT' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor1 = code.data[8351 len 32]
    stor2[address(msg.sender)] = code.data[8351 len 32]
    return code.data[709 len 7642]
}



// =====================  Runtime code  =====================


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 thankYou;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
mapping of uint256 stor8;
uint8 stor9;
uint256 stor10;
uint256 bonusTokensIssued;
uint256 freeTokensAvailable;
uint256 freeTokensIssued;
uint256 stor14;
uint256 contribution;
uint256 totalTokensIssued;
mapping of uint8 stor17;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function thankYou() {
    return thankYou[0 len thankYou.length]
}

function decimals() {
    return decimals
}

function contribution() {
    return contribution
}

function freeTokensIssued() {
    return freeTokensIssued
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function bonusTokensIssued() {
    return bonusTokensIssued
}

function owner() {
    return owner
}

function totalTokensIssued() {
    return totalTokensIssued
}

function symbol() {
    return symbol[0 len symbol.length]
}

function crowdsaleClosed() {
    return bool(stor9)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function freeTokensAvailable() {
    return freeTokensAvailable
}

function openCrowdsale() {
    require msg.sender == owner
    stor9 = 0
}

function stopCrowdsale() {
    require msg.sender == owner
    stor9 = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
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
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    if not msg.value:
        require not stor17[address(msg.sender)]
        require freeTokensAvailable >= stor14
        require balanceOf[stor0] >= stor14
        stor17[address(msg.sender)] = 1
        require stor14 <= freeTokensAvailable
        freeTokensAvailable -= stor14
        require freeTokensIssued + stor14 >= freeTokensIssued
        freeTokensIssued += stor14
        require balanceOf[address(msg.sender)] + stor14 >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += stor14
        require stor14 <= balanceOf[stor0]
        balanceOf[stor0] -= stor14
        require totalTokensIssued + stor14 >= totalTokensIssued
        totalTokensIssued += stor14
        emit FreeTokensIssued(owner, msg.sender, stor14);
    else:
        require not stor9
        require balanceOf[stor0] >= 1000 * msg.value
        if msg.value < 5 * 10^16:
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require contribution + msg.value >= contribution
            contribution += msg.value
            require 1000 * msg.value <= balanceOf[stor0]
            balanceOf[stor0] += -1000 * msg.value
            require totalTokensIssued + (1000 * msg.value) >= totalTokensIssued
            totalTokensIssued += 1000 * msg.value
            require balanceOf[address(msg.sender)] + (1000 * msg.value) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 1000 * msg.value
            emit Transfer((1000 * msg.value), this.address, msg.sender);
        else:
            require stor8[address(msg.sender)] + 1 >= stor8[address(msg.sender)]
            stor8[address(msg.sender)]++
            if stor8[address(msg.sender)]:
                require stor8[address(msg.sender)]
                require stor8[address(msg.sender)] * stor10 / stor8[address(msg.sender)] == stor10
            require (1000 * msg.value) + (stor8[address(msg.sender)] * stor10) >= 1000 * msg.value
            require bonusTokensIssued + (stor8[address(msg.sender)] * stor10) >= bonusTokensIssued
            bonusTokensIssued += stor8[address(msg.sender)] * stor10
            require balanceOf[stor0] >= (1000 * msg.value) + (stor8[address(msg.sender)] * stor10)
            emit BonusTokens(owner, msg.sender, stor8[address(msg.sender)] * stor10);
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require contribution + msg.value >= contribution
            contribution += msg.value
            require (1000 * msg.value) + (stor8[address(msg.sender)] * stor10) <= balanceOf[stor0]
            balanceOf[stor0] = balanceOf[stor0] - (1000 * msg.value) - (stor8[address(msg.sender)] * stor10)
            require totalTokensIssued + (1000 * msg.value) + (stor8[address(msg.sender)] * stor10) >= totalTokensIssued
            totalTokensIssued = totalTokensIssued + (1000 * msg.value) + (stor8[address(msg.sender)] * stor10)
            require balanceOf[address(msg.sender)] + (1000 * msg.value) + (stor8[address(msg.sender)] * stor10) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) + (stor8[address(msg.sender)] * stor10)
            emit Transfer(((1000 * msg.value) + (stor8[address(msg.sender)] * stor10)), this.address, msg.sender);
}



}
