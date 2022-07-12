contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor6;
uint8 paused;
mapping of uint8 stor8;
uint256 cap;
mapping of uint256 timelockOf;
address sub_fd1ce5b5Address;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function cap() {
    return cap
}

function isPauser(address arg1) {
    require arg1
    return bool(stor6[address(arg1)])
}

function paused() {
    return bool(paused)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require arg1
    return bool(stor8[address(arg1)])
}

function timelockOf(address arg1) {
    return timelockOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_fd1ce5b5(?) {
    return sub_fd1ce5b5Address
}

function _fallback() payable {
    revert
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
    require stor8[address(msg.sender)]
    stor8[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function approve(address arg1, uint256 arg2) {
    require not paused
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addPauser(address arg1) {
    require msg.sender
    require stor6[address(msg.sender)]
    require arg1
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) {
    require msg.sender
    require stor8[address(msg.sender)]
    require arg1
    require not stor8[address(arg1)]
    stor8[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require not paused
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require not paused
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    if block.timestamp < timelockOf[address(msg.sender)]:
        revert with 0, 'timelocked'
    require msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function mint(address arg1, uint256 arg2) {
    require msg.sender
    require stor8[address(msg.sender)]
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 <= cap
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp < timelockOf[address(msg.sender)]:
        revert with 0, 'timelocked'
    require arg2 > 0
    require not paused
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    if block.timestamp < timelockOf[address(arg1)]:
        revert with 0, 'timelocked'
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg1
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.timestamp < timelockOf[address(arg1)]:
        revert with 0, 'timelocked'
    require arg3 > 0
    require not paused
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balanceOf[address(arg1)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
