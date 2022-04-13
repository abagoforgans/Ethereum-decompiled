contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
mapping of uint256 stor4;
uint8 stor6;
uint8 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor17;
array of uint256 stor18;
address stor19;

function _fallback() payable {
    stor6 = 0
    stor9 = 0
    stor12 = 100 * 10^6
    if not stor12:
        stor13 = 10^9 * stor12
        stor14 = 60 * 10^6 * stor12
    else:
        require stor12
        require 10^9 * stor12 / stor12 == 10^9
        stor13 = 10^9 * stor12
        if not stor12:
            stor14 = 60 * 10^6 * stor12
        else:
            require stor12
            require 60 * 10^6 * stor12 / stor12 == 60 * 10^6
            stor14 = 60 * 10^6 * stor12
            if stor12:
                require stor12
                require 4 * 10^6 * stor12 / stor12 == 4 * 10^6
    stor15 = 4 * 10^6 * stor12
    stor17 = 0
    bool(stor18.length) = 0
    stor18.length.field_1 = 18
    stor18.length.field_8 = 'LLTTest 2017082401' / 256
    idx = 0
    while stor18.length + 31 / 32 > idx:
        stor18[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    stor2 = code.data[12041 len 20]
    stor13 = code.data[11965 len 32]
    stor10 = code.data[11997 len 32]
    stor11 = block.timestamp
    stor4[address(msg.sender)] = code.data[11997 len 32]
    stor19 = msg.sender
    return code.data[893 len 11072]
}



// =====================  Runtime code  =====================


#
#  - releaseSupply(uint256 arg1, uint256 arg2)
#
const getNow = block.timestamp


address owner;
address pendingOwner;
address operatorAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor6;
mapping of struct sub_78490cf9;
uint256 sub_b5286b65;
uint8 stor9;
uint256 releasedSupply;
uint256 createTime;
uint256 stor12;
uint256 totalSupply;
uint256 limitSupplyPerYear;
uint256 dailyLimit;
mapping of struct frozenRecords;
uint256 frozenRecordsCount;
array of uint256 name;
address stor19;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function lockedBalanceCount() {
    return sub_b5286b65
}

function lockedBalances(uint256 arg1) {
    return sub_78490cf9[arg1].field_0, sub_78490cf9[arg1].field_256, sub_78490cf9[arg1].field_512
}

function limitSupplyPerYear() {
    return limitSupplyPerYear
}

function operator() {
    return operatorAddress
}

function createTime() {
    return createTime
}

function dailyLimit() {
    return dailyLimit
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_78490cf9(?) {
    return sub_78490cf9[arg1].field_0, sub_78490cf9[arg1].field_256, sub_78490cf9[arg1].field_512
}

function owner() {
    return owner
}

function sub_b3d63b71(?) {
    return bool(stor9)
}

function sub_b5286b65(?) {
    return sub_b5286b65
}

function releasedSupply() {
    return releasedSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function pendingOwner() {
    return pendingOwner
}

function frozenRecordsCount() {
    return frozenRecordsCount
}

function frozenRecords(uint256 arg1) {
    return frozenRecords[arg1].field_0, frozenRecords[arg1].field_256
}

function sub_20d445f3(?) {
  stop
}

function sub_25ffb636(?) {
  stop
}

function _fallback() payable {
    revert
}

function sub_2a7f1c7d(?) {
    return arg1
}

function releaseLockedBalance() {
    # nil
}

function unfreeze() {
    require msg.sender == operatorAddress
    # nil
}

function setDailyLimit(uint256 arg1) {
    require msg.sender == owner
    dailyLimit = arg1
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

function sub_b50535bb(?) {
    require msg.sender == owner
    require arg1 <= block.timestamp
    createTime = block.timestamp - arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
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

function lockedBalanceOf(address arg1) {
    s = 0
    idx = 0
    s = 0
    while idx < sub_b5286b65:
        mem[0] = idx
        mem[32] = 7
        if arg1 != sub_78490cf9[idx].field_0:
            s = sha3(idx, 7)
            idx = idx + 1
            s = s
            continue 
        require s + sub_78490cf9[idx].field_256 >= s
        s = sha3(idx, 7)
        idx = idx + 1
        s = s + sub_78490cf9[idx].field_256
        continue 
    return s
}

function transferLockedToken(address arg1, uint256 arg2, uint256 arg3) {
    require not stor6
    stor6 = 1
    require arg3 > block.timestamp
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    sub_78490cf9[stor8].field_0 = arg1
    sub_78490cf9[stor8].field_256 = arg2
    sub_78490cf9[stor8].field_512 = arg3
    sub_b5286b65++
    emit TransferLockedToken(arg2, arg3, msg.sender, arg1);
    stor6 = 0
    return 1
}

function reset(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    owner = stor19
    operatorAddress = stor19
    stor9 = 0
    releasedSupply = 28 * 10^15
    stor12 = 100 * 10^6
    if not stor12:
        totalSupply = 10^9 * stor12
        limitSupplyPerYear = 60 * 10^6 * stor12
    else:
        require stor12
        require 10^9 * stor12 / stor12 == 10^9
        totalSupply = 10^9 * stor12
        if not stor12:
            limitSupplyPerYear = 60 * 10^6 * stor12
        else:
            require stor12
            require 60 * 10^6 * stor12 / stor12 == 60 * 10^6
            limitSupplyPerYear = 60 * 10^6 * stor12
            if stor12:
                require stor12
                require 4 * 10^6 * stor12 / stor12 == 4 * 10^6
    dailyLimit = 4 * 10^6 * stor12
    idx = 0
    while idx < frozenRecordsCount:
        mem[0] = idx
        mem[32] = 16
        frozenRecords[idx].field_0 = 0
        frozenRecords[idx].field_256 = 0
        idx = idx + 1
        continue 
    frozenRecordsCount = 0
    sub_b5286b65 = 0
    require 0 < arg1.length
    balanceOf[mem[140 len 20]] = 28 * 10^15
    idx = 1
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        balanceOf[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}



}
