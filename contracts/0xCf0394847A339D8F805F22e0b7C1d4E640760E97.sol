contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor3;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor13;
uint256 stor15;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
array of uint256 stor21;
array of uint256 stor22;
array of uint256 stor23;
uint8 stor24;

function _fallback() payable {
    stor6 = 10000
    stor8 = 100 * 10^6
    stor9 = 10^9
    stor10 = 0
    stor11 = 0
    stor13 = 0
    stor15 = 0
    stor17 = 0
    if stor8:
        require stor8
        require 10^6 * stor8 / stor8 == 10^6
    stor19 = 10^6 * stor8
    stor20 = 0
    uint8(stor21.length) = 20
    stor21.length.field_8 = '2017121802' / 256
    idx = 0
    while stor21.length + 31 / 32 > idx:
        stor21[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor22.length) = 18
    stor22.length.field_8 = 'KuaiToken' / 256
    idx = 0
    while stor22.length + 31 / 32 > idx:
        stor22[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor23.length) = 4
    stor23.length.field_8 = 'KT' / 256
    idx = 0
    while stor23.length + 31 / 32 > idx:
        stor23[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor24 = 8
    require not msg.value
    stor3 = msg.sender
    stor5 = code.data[6884 len 20]
    stor0 = 0
    stor7 = block.timestamp
    stor20 = block.timestamp
    if stor8:
        require stor8
        require code.data[6904 len 32] * stor8 / stor8 == code.data[6904 len 32]
    stor18 = code.data[6904 len 32] * stor8
    return code.data[744 len 6128]
}



// =====================  Runtime code  =====================


#
#  - mint(uint256 arg1)
#  - sub_e4f03a77(?)
#
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address pendingOwner;
address operatorAddress;
uint256 createTime;
uint256 stor9;
mapping of address stor12;
uint256 stor13;
uint256 standardDailyLimit;
uint256 dailyLimitLeft;
uint256 lastMintTime;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function operator() {
    return operatorAddress
}

function standard() {
    return standard[0 len standard.length]
}

function createTime() {
    return createTime
}

function dailyLimitLeft() {
    return dailyLimitLeft
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function lastMintTime() {
    return lastMintTime
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function pendingOwner() {
    return pendingOwner
}

function standardDailyLimit() {
    return standardDailyLimit
}

function clear() {
    # nil
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    pendingOwner = arg1
}

function claimOwnership() {
    require pendingOwner == msg.sender
    owner = pendingOwner
    pendingOwner = 0
}

function transferOperator(address arg1) {
    require owner == msg.sender
    require arg1
    operatorAddress = arg1
}

function setDailyLimit(uint256 arg1) {
    require owner == msg.sender
    standardDailyLimit = arg1
    emit SetDailyLimit(block.timestamp, msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if balanceOf[address(arg1)] >= stor9:
        stor12[stor13] = arg1
        stor13++
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if balanceOf[address(arg2)] >= stor9:
        stor12[stor13] = arg2
        stor13++
    return 1
}



}
