contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address stor9;
array of struct stor10;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'mist' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 4
    stor3.length.field_8 = 'MIST' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    stor5 = 640000000 * 10^18
    stor6 = 160000000 * 10^18
    stor7 = 428794 * 3600
    stor8 = 428799 * 3600
    require not msg.value
    stor0 = 2000000000 * 10^18
    stor1[1] = stor5
    require stor0 >= stor5
    require stor0 - stor5 <= stor0
    stor1[address(msg.sender)] = stor0 - stor5
    stor9 = msg.sender
    stor10.length++
    if not stor10.length > stor10.length + 1:
        stor10[stor10.length].field_0 = 428794 * 3600
        stor10[stor10.length].field_256 = 1
        stor10.length++
        stor10[stor10.length].field_0 = 428795 * 3600
        stor10[stor10.length].field_256 = 1
        stor10.length++
        stor10[stor10.length].field_0 = 1543668600
        stor10[stor10.length].field_256 = 1
        stor10.length++
    else:
        idx = 2 * stor10.length + 1
        while 2 * stor10.length > idx:
            stor10[idx].field_0 = 0
            stor10[idx].field_256 = 0
            idx = idx + 2
            continue 
        stor10[stor10.length].field_0 = 428794 * 3600
        stor10[stor10.length].field_256 = 1
        stor10.length++
        if not stor10.length > stor10.length + 1:
            stor10[stor10.length].field_0 = 428795 * 3600
            stor10[stor10.length].field_256 = 1
            stor10.length++
            stor10[stor10.length].field_0 = 1543668600
            stor10[stor10.length].field_256 = 1
            stor10.length++
        else:
            idx = 2 * stor10.length + 1
            while 2 * stor10.length > idx:
                stor10[idx].field_0 = 0
                stor10[idx].field_256 = 0
                idx = idx + 2
                continue 
            stor10[stor10.length].field_0 = 428795 * 3600
            stor10[stor10.length].field_256 = 1
            stor10.length++
            if not stor10.length > stor10.length + 1:
                stor10[stor10.length].field_0 = 1543668600
                stor10[stor10.length].field_256 = 1
                stor10.length++
            else:
                idx = 2 * stor10.length + 1
                while 2 * stor10.length > idx:
                    stor10[idx].field_0 = 0
                    stor10[idx].field_256 = 0
                    idx = idx + 2
                    continue 
                stor10[stor10.length].field_0 = 1543668600
                stor10[stor10.length].field_256 = 1
                stor10.length++
                if not stor10.length <= stor10.length + 1:
                    idx = 2 * stor10.length + 1
                    while 2 * stor10.length > idx:
                        stor10[idx].field_0 = 0
                        stor10[idx].field_256 = 0
                        idx = idx + 2
                        continue 
    stor10[stor10.length].field_0 = 428799 * 3600
    stor10[stor10.length].field_256 = 1
    return code.data[1283 len 3721]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
array of uint256 symbol;
array of uint256 name;
uint256 decimals;
uint256 freezedValue;
uint256 eachUnfreezeValue;
uint256 releaseTime;
uint256 latestReleaseTime;
address owner;
array of struct unfreezeTimeMap;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function latestReleaseTime() {
    return latestReleaseTime
}

function decimals() {
    return decimals
}

function unfreezeTimeMap(uint256 arg1) {
    require arg1 < unfreezeTimeMap.length
    return unfreezeTimeMap[arg1].field_0, bool(unfreezeTimeMap[arg1].field_256)
}

function freezedValue() {
    return freezedValue
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

function eachUnfreezeValue() {
    return eachUnfreezeValue
}

function releaseTime() {
    return releaseTime
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setRelease(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= latestReleaseTime
    releaseTime = arg1
}

function distribute(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp < releaseTime:
        require block.timestamp >= latestReleaseTime
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function unfreeze(uint256 arg1) {
    require msg.sender == owner
    require arg1 >= 0
    require arg1 < unfreezeTimeMap.length
    require block.timestamp >= unfreezeTimeMap[arg1].field_0
    require arg1 < unfreezeTimeMap.length
    require unfreezeTimeMap[arg1].field_256
    require balanceOf[1] >= eachUnfreezeValue
    require balanceOf[1] >= eachUnfreezeValue
    require balanceOf[1] - eachUnfreezeValue <= balanceOf[1]
    balanceOf[1] -= eachUnfreezeValue
    require balanceOf[stor9] + eachUnfreezeValue >= balanceOf[stor9]
    require balanceOf[stor9] + eachUnfreezeValue >= eachUnfreezeValue
    balanceOf[stor9] += eachUnfreezeValue
    require freezedValue >= eachUnfreezeValue
    require freezedValue - eachUnfreezeValue <= freezedValue
    freezedValue -= eachUnfreezeValue
    require arg1 < unfreezeTimeMap.length
    unfreezeTimeMap[arg1].field_256 = 0
    emit Transfer(eachUnfreezeValue, 1, owner);
}



}
