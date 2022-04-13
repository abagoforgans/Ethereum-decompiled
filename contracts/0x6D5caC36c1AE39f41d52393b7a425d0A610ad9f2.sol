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
array of uint256 stor19;
array of uint256 stor20;
uint8 stor21;

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
                require 10^6 * stor12 / stor12 == 10^6
    stor15 = 10^6 * stor12
    stor17 = 0
    bool(stor18.length) = 0
    stor18.length.field_1 = 10
    stor18.length.field_8 = '2017082602' / 256
    idx = 0
    while stor18.length + 31 / 32 > idx:
        stor18[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor19.length) = 0
    stor19.length.field_1 = 7
    stor19.length.field_8 = 'LLToken' / 256
    idx = 0
    while stor19.length + 31 / 32 > idx:
        stor19[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor20.length) = 0
    stor20.length.field_1 = 3
    stor20.length.field_8 = 'LLT' / 256
    idx = 0
    while stor20.length + 31 / 32 > idx:
        stor20[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor21 = 8
    require not msg.value
    stor0 = msg.sender
    stor2 = code.data[11505 len 20]
    stor13 = code.data[11429 len 32]
    stor10 = code.data[11461 len 32]
    stor11 = block.timestamp
    stor4[address(msg.sender)] = code.data[11461 len 32]
    return code.data[1012 len 10417]
}



// =====================  Runtime code  =====================


#
#  - releaseSupply(uint256 arg1, uint256 arg2)
#
address owner;
address pendingOwner;
address operatorAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor6;
mapping of struct lockedBalances;
uint256 lockedBalanceCount;
uint256 releasedSupply;
uint256 createTime;
uint256 totalSupply;
uint256 limitSupplyPerYear;
uint256 dailyLimit;
mapping of struct frozenRecords;
uint256 frozenRecordsCount;
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

function lockedBalanceCount() {
    return lockedBalanceCount
}

function lockedBalances(uint256 arg1) {
    return lockedBalances[arg1].field_0, lockedBalances[arg1].field_256, lockedBalances[arg1].field_512
}

function limitSupplyPerYear() {
    return limitSupplyPerYear
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

function dailyLimit() {
    return dailyLimit
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

function _fallback() payable {
    revert
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
    while idx < lockedBalanceCount:
        mem[0] = idx
        mem[32] = 7
        if arg1 != lockedBalances[idx].field_0:
            s = sha3(idx, 7)
            idx = idx + 1
            s = s
            continue 
        require s + lockedBalances[idx].field_256 >= s
        s = sha3(idx, 7)
        idx = idx + 1
        s = s + lockedBalances[idx].field_256
        continue 
    return s
}

function transferLockedToken(address arg1, uint256 arg2, uint256 arg3) {
    require not stor6
    stor6 = 1
    require arg3 > block.timestamp
    require 8760 * 24 * 3600 <= arg3
    require arg3 - (8760 * 24 * 3600) < block.timestamp
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    lockedBalances[stor8].field_0 = arg1
    lockedBalances[stor8].field_256 = arg2
    lockedBalances[stor8].field_512 = arg3
    lockedBalanceCount++
    emit TransferLockedToken(arg2, arg3, msg.sender, arg1);
    stor6 = 0
    return 1
}

function unfreeze() payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == operatorAddress
    s = 0
    while 0 < frozenRecordsCount:
        mem[0] = 0
        mem[32] = 16
        if frozenRecords[0].field_256 >= block.timestamp:
            s = s
            continue 
        require balanceOf[stor0] + frozenRecords[0].field_0 >= balanceOf[stor0]
        mem[32] = 4
        balanceOf[stor0] += frozenRecords[0].field_0
        mem[mem[64]] = owner
        mem[mem[64] + 32] = frozenRecords[0].field_0
        mem[mem[64] + 64] = frozenRecords[0].field_256
        emit UnfreezeAmount(owner, frozenRecords[0].field_0, frozenRecords[0].field_256);
        frozenRecords[0].field_0 = frozenRecords[stor17 - 1].field_0
        frozenRecords[0].field_256 = frozenRecords[stor17 - 1].field_256
        mem[0] = frozenRecordsCount - 1
        mem[32] = 16
        frozenRecords[stor17 - 1].field_0 = 0
        frozenRecords[stor17 - 1].field_256 = 0
        frozenRecordsCount--
        s = s + frozenRecords[0].field_0
        continue 
    return s
}

function releaseLockedBalance() {
    s = 0
    while 0 < lockedBalanceCount:
        mem[0] = 0
        mem[32] = 7
        if block.timestamp < lockedBalances[0].field_512:
            s = s
            continue 
        require balanceOf[stor7[0].field_0] + lockedBalances[0].field_256 >= balanceOf[stor7[0].field_0]
        balanceOf[stor7[0].field_0] += lockedBalances[0].field_256
        mem[96] = lockedBalances[0].field_256
        mem[128] = lockedBalances[0].field_512
        emit ReleaseLockedBalance(lockedBalances[0].field_256, lockedBalances[0].field_512, lockedBalances[0].field_0);
        lockedBalances[0].field_0 = lockedBalances[stor8 - 1].field_0
        lockedBalances[0].field_256 = lockedBalances[stor8 - 1].field_256
        lockedBalances[0].field_512 = lockedBalances[stor8 - 1].field_512
        mem[0] = lockedBalanceCount - 1
        mem[32] = 7
        lockedBalances[stor8 - 1].field_0 = 0
        lockedBalances[stor8 - 1].field_256 = 0
        lockedBalances[stor8 - 1].field_512 = 0
        lockedBalanceCount--
        s = s + lockedBalances[0].field_256
        continue 
    return s
}



}
