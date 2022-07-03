contract main {




// =====================  Runtime code  =====================


mapping of uint256 balances;
mapping of uint256 allowed;
uint256 totalSupply;
address owner;
mapping of uint8 stor4;
uint256 cap;
mapping of uint8 stor6;
uint8 stor7;
uint8 stor7; offset 168
uint128 stor7; offset 168
address releaseAgentAddress; offset 8
mapping of uint8 stor8;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
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

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function paused() {
    return bool(uint8(stor7.field_0))
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function transferAgents(address arg1) {
    return bool(stor8[arg1])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function released() {
    return bool(uint8(stor7.field_168))
}

function isMinter(address arg1) {
    require arg1
    return bool(stor4[address(arg1)])
}

function releaseAgent() {
    return releaseAgentAddress
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function releaseTokenTransfer() {
    require msg.sender == releaseAgentAddress
    Mask(88, 0, stor7.field_168) = 1
}

function renouncePauser() {
    require msg.sender
    stor6[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() {
    require msg.sender
    stor4[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function addPauser(address arg1) {
    require msg.sender == owner
    require arg1
    stor6[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) {
    require msg.sender == owner
    require arg1
    stor4[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function setReleaseAgent(address arg1) {
    require msg.sender == owner
    require 0 == bool(uint8(stor7.field_168))
    releaseAgentAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function unpause() {
    require msg.sender
    require stor6[address(msg.sender)]
    require uint8(stor7.field_0)
    uint8(stor7.field_0) = 0
    emit Unpaused()
}

function pause() {
    require msg.sender
    require stor6[address(msg.sender)]
    require not uint8(stor7.field_0)
    uint8(stor7.field_0) = 1
    emit Paused()
}

function setTransferAgent(address arg1, bool arg2) {
    require msg.sender == owner
    require 0 == bool(uint8(stor7.field_168))
    stor8[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    if not uint8(stor7.field_168):
        require stor8[address(arg1)]
    require not uint8(stor7.field_0)
    require arg1
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender
    require arg1 <= balances[address(msg.sender)]
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    if not uint8(stor7.field_168):
        require stor8[address(arg1)]
    require not uint8(stor7.field_0)
    require arg1
    require arg2 <= allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender
    require stor4[address(msg.sender)]
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 <= cap
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    if not uint8(stor7.field_168):
        require stor8[address(arg1)]
    require not uint8(stor7.field_0)
    require arg1
    require allowed[address(msg.sender)][address(arg1)] + arg2 >= allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= allowed[address(arg1)][address(msg.sender)]
    require arg2 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg2
    require arg1
    require arg2 <= balances[address(arg1)]
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balances[address(arg1)]
    balances[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor7.field_168):
        require stor8[address(msg.sender)]
    require not uint8(stor7.field_0)
    require arg2 <= balances[address(msg.sender)]
    require arg1
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor7.field_168):
        require stor8[address(arg1)]
    require not uint8(stor7.field_0)
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
