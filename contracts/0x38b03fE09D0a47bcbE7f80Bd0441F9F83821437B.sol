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
array of uint256 stor12;
array of uint256 stor13;
array of uint256 stor14;
uint8 stor15;

function _fallback() payable {
    stor7 = 100 * 10^6
    if not stor7:
        stor8 = 10 * stor7
    else:
        require stor7
        require 10 * stor7 / stor7 == 10
        stor8 = 10 * stor7
        if stor7:
            require stor7
            require 10^6 * stor7 / stor7 == 10^6
    stor10 = 10^6 * stor7
    stor11 = 0
    bool(stor12.length) = 0
    stor12.length.field_1 = 10
    stor12.length.field_8 = '2018011001' / 256
    idx = 0
    while stor12.length + 31 / 32 > idx:
        stor12[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor13.length) = 0
    stor13.length.field_1 = 9
    stor13.length.field_8 = 'KuaiToken' / 256
    idx = 0
    while stor13.length + 31 / 32 > idx:
        stor13[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor14.length) = 0
    stor14.length.field_1 = 2
    stor14.length.field_8 = 'KT' / 256
    idx = 0
    while stor14.length + 31 / 32 > idx:
        stor14[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor15 = 8
    require not msg.value
    stor3 = msg.sender
    stor5 = code.data[8793 len 20]
    stor0 = 0
    stor6 = block.timestamp
    stor11 = stor6
    if stor7:
        require stor7
        require stor7 * code.data[8813 len 32] / stor7 == code.data[8813 len 32]
    stor9 = stor7 * code.data[8813 len 32]
    stor10 = stor9
    return code.data[892 len 7889]
}



// =====================  Runtime code  =====================


#
#  - mint(uint256 arg1)
#
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address pendingOwner;
address operatorAddress;
uint256 createTime;
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

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    pendingOwner = arg1
}

function claimOwnership() {
    require msg.sender == pendingOwner
    owner = pendingOwner
    pendingOwner = 0
}

function transferOperator(address arg1) {
    require msg.sender == owner
    require arg1
    operatorAddress = arg1
}

function setDailyLimit(uint256 arg1) {
    require msg.sender == owner
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
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function makeBonus(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == operatorAddress
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _18 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_18));
        idx = idx + 1
        continue 
    return 1
}



}
