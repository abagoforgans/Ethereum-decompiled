contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
uint8 stor4; offset 160
uint128 stor4; offset 160
address minerAddress;
uint256 lastMiningTime;
uint256 stor6; offset 1
uint256 mineral;
uint256 lastMineralUpdateTime;
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

function miner() {
    return minerAddress
}

function mineral() {
    return mineral
}

function paused() {
    return bool(uint8(stor4.field_160))
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

function lastMiningTime() {
    return lastMiningTime
}

function lastMineralUpdateTime() {
    return lastMineralUpdateTime
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require uint8(stor4.field_160)
    Mask(96, 0, stor4.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor4.field_160)
    Mask(96, 0, stor4.field_160) = 1
    emit Pause()
}

function setMiner(address arg1) {
    require msg.sender == owner
    require arg1
    emit SetMiner(minerAddress, arg1);
    minerAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor4.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor4.field_160)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor4.field_160)
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor4.field_160)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mining() {
    require msg.sender == minerAddress
    require block.timestamp - lastMiningTime > 144 * 24 * 3600
    if block.timestamp - lastMineralUpdateTime > 35040 * 24 * 3600:
        mineral = stor6
        lastMineralUpdateTime = block.timestamp
    require balanceOf[address(msg.sender)] + mineral >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += mineral
    lastMiningTime = block.timestamp
    emit Transfer(mineral, 0, msg.sender);
    return mineral
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor4.field_160)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
