contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
address stor1;
address stor2;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 storA860;

function _fallback() {
    stor1 = 0x9a64fe62837d8e2c0bd0c2a96bbddea609ab2f19
    stor2 = 0x821c05372425709a68090a17075a855dd20371c7
    stor7 = 421024 * 3600
    bool(stor3.length) = 0
    stor3.length.field_1 = 9
    stor3.length.field_8 = 'LightCoin' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 5
    stor4.length.field_8 = 'light' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 8
    stor8 = 21 * 10^18
    stor0[stor1] = 525 * 10^13 * 24 * 3600
    storA860 = 2 * 10^6
    stor6 = stor8 / 10
    return code.data[549 len 1924]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
address owner;
address lockOwner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 lockAmount;
uint256 startTime;
uint256 totalSupply;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function lockOwner() {
    return lockOwner
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function lockAmount() {
    return lockAmount
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function approve(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function releaseToken() {
    require block.timestamp >= startTime + (17520 * 24 * 3600)
    require lockAmount > (3 * totalSupply / 40) - (block.timestamp + -startTime - (17520 * 24 * 3600) / 4380 * 3600 * totalSupply / 40)
    lockAmount -= totalSupply / 40
    balanceOf[stor2] += totalSupply / 40
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(arg2)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
