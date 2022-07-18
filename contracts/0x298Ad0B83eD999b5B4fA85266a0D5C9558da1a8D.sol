contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint256 lockedAccount;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint8 paused;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 INITIAL_SUPPLY;
mapping of uint8 stor12;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor6[address(arg1)])
}

function paused() {
    return bool(paused)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function lockedAccount(address arg1) {
    require calldata.size - 4 >= 32
    return lockedAccount[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor5[address(arg1)])
}

function frozenAccount(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unpause() {
    require msg.sender
    require stor6[address(msg.sender)]
    require paused
    paused = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor6[address(msg.sender)]
    require not paused
    paused = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor6[address(msg.sender)]
    stor6[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() {
    require msg.sender
    require stor5[address(msg.sender)]
    stor5[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function unFreezeAccount(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require stor12[address(arg1)]
    stor12[address(arg1)] = 0
    emit UnFreeze(arg1);
}

function freezeAccount(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require bool(stor12[address(arg1)]) != 1
    stor12[address(arg1)] = 1
    emit Freeze(arg1);
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor6[address(msg.sender)]
    require arg1
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor5[address(msg.sender)]
    require arg1
    require not stor5[address(arg1)]
    stor5[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not paused
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor5[address(msg.sender)]
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not paused
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function _lockAccount(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require lockedAccount[address(arg1)] + arg2 >= lockedAccount[address(arg1)]
    lockedAccount[address(arg1)] += arg2
    emit Lock(address(arg1), lockedAccount[address(arg1)]);
    return 1
}

function _unLockAccount(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require lockedAccount[address(arg1)] >= arg2
    require arg2 <= lockedAccount[address(arg1)]
    lockedAccount[address(arg1)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit UnLock(address(arg1), lockedAccount[address(arg1)]);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not paused
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function lockAccount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require lockedAccount[address(msg.sender)] + arg1 >= lockedAccount[address(msg.sender)]
    lockedAccount[address(msg.sender)] += arg1
    emit Lock(msg.sender, lockedAccount[address(msg.sender)]);
    return 1
}

function unLockAccount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require lockedAccount[address(msg.sender)] >= arg1
    require arg1 <= lockedAccount[address(msg.sender)]
    lockedAccount[address(msg.sender)] -= arg1
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    emit UnLock(msg.sender, lockedAccount[address(msg.sender)]);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor12[address(msg.sender)]
    require not stor12[address(arg1)]
    require not paused
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not stor12[address(msg.sender)]
    require not stor12[address(arg1)]
    require not stor12[address(arg2)]
    require not paused
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
