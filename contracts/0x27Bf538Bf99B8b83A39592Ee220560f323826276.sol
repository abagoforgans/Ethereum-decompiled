contract main {




// =====================  Runtime code  =====================


const Now = block.timestamp


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
mapping of uint8 stor4;
mapping of uint256 showTimeLock;
mapping of uint256 showTimeLockValue;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address walletAddress; offset 8

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function showTimeLockValue(address arg1) {
    return showTimeLockValue[address(arg1)]
}

function showTokenValue(address arg1) {
    return balanceOf[address(arg1)]
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(stor3)
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

function showLock(address arg1) {
    return bool(stor4[address(arg1)])
}

function showTimeLock(address arg1) {
    return showTimeLock[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor3
    stor3 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor3
    stor3 = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function lock(address arg1) {
    require msg.sender == owner
    require not stor4[address(arg1)]
    stor4[address(arg1)] = 1
    return 1
}

function unlock(address arg1) {
    require msg.sender == owner
    require 1 == bool(stor4[address(arg1)])
    stor4[address(arg1)] = 0
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require not stor3
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function resetTimeLockValue(address arg1) {
    require msg.sender == owner
    require not stor4[address(arg1)]
    require block.timestamp > showTimeLock[address(arg1)]
    showTimeLockValue[address(arg1)] = 0
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor3
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor3
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function timelock(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require not stor4[address(arg1)]
    require arg2 > block.timestamp
    require arg2 >= showTimeLock[address(arg1)]
    require balanceOf[address(arg1)] >= arg3
    showTimeLock[address(arg1)] = arg2
    showTimeLockValue[address(arg1)] = arg3
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor3
    require not stor4[msg.sender]
    if showTimeLock[msg.sender]:
        if block.timestamp <= showTimeLock[msg.sender]:
            require showTimeLockValue[msg.sender] <= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] - showTimeLockValue[msg.sender] >= arg2
    require not stor3
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}



}
