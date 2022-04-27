contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
uint8 stor7;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = '1.0' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 12
    stor5.length.field_8 = 'Metrax Token' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 4
    stor6.length.field_8 = 'MTRX' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 18
    require not msg.value
    stor3 = msg.sender
    stor1[code.data[9928 len 20]] = 10000000 * 10^18
    stor0 = 10000000 * 10^18
    return code.data[667 len 9249]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
array of uint256 version;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 lockedOf;
mapping of uint256 unlockTimeOf;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function unlockTimeOf(address arg1) {
    return unlockTimeOf[address(arg1)]
}

function version() {
    return version[0 len version.length]
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

function lockedOf(address arg1) {
    return lockedOf[address(arg1)]
}

function getTotalSupply() {
    return totalSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isSoleout() {
    return totalSupply >= 10000000 * 10^18
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
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
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function unlock() {
    require lockedOf[address(msg.sender)] > 0
    require block.timestamp >= unlockTimeOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + lockedOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += lockedOf[address(msg.sender)]
    lockedOf[address(msg.sender)] = 0
    unlockTimeOf[address(msg.sender)] = 0
    emit Transfer(lockedOf[address(msg.sender)], 0, msg.sender);
    emit UnLock(lockedOf[address(msg.sender)], msg.sender);
    return 1
}

function sub_9ff0ed3b(?) {
    require msg.sender == owner
    require totalSupply < 10000000 * 10^18
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if arg3 > 0:
        require totalSupply + arg3 >= totalSupply
        totalSupply += arg3
        require lockedOf[address(arg1)] + arg3 >= lockedOf[address(arg1)]
        lockedOf[address(arg1)] += arg3
        if arg4 >= unlockTimeOf[address(arg1)]:
            unlockTimeOf[address(arg1)] = arg4
        emit Lock(arg3, arg4, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferAndLock(address arg1, uint256 arg2, uint256 arg3) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 > 0
    require arg3 > block.timestamp
    require arg3 <= block.timestamp + (43800 * 24 * 3600)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    if unlockTimeOf[address(arg1)] <= block.timestamp:
        if unlockTimeOf[address(arg1)]:
            require balanceOf[address(arg1)] + lockedOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += lockedOf[address(arg1)]
            lockedOf[address(arg1)] = 0
    require lockedOf[address(arg1)] + arg2 >= lockedOf[address(arg1)]
    lockedOf[address(arg1)] += arg2
    if arg3 >= unlockTimeOf[address(arg1)]:
        unlockTimeOf[address(arg1)] = arg3
    emit Transfer(arg2, msg.sender, arg1);
    emit Lock(arg2, arg3, arg1);
    return 1
}



}
