contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor7;
mapping of uint8 stor8;
uint8 paused;
uint256 cap;

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
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor8[address(arg1)])
}

function paused() {
    return bool(paused)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
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
    return bool(stor7[address(arg1)])
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
    require stor8[address(msg.sender)]
    require paused
    paused = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor8[address(msg.sender)]
    require not paused
    paused = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor8[address(msg.sender)]
    stor8[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() {
    require msg.sender
    require stor7[address(msg.sender)]
    stor7[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not paused
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit 0xfe8c5be1: arg2, msg.sender, arg1
    return 1
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor8[address(msg.sender)]
    require arg1
    require not stor8[address(arg1)]
    stor8[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor7[address(msg.sender)]
    require arg1
    require not stor7[address(arg1)]
    stor7[address(arg1)] = 1
    emit MinterAdded(arg1);
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

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not paused
    require arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit 0xfe8c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not paused
    require arg1
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit 0xfe8c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not paused
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    emit 0xfe8c5be1: allowance[address(arg1)][msg.sender], arg1, msg.sender
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not paused
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    emit 0xfe8c5be1: allowance[address(arg1)][msg.sender], arg1, msg.sender
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require msg.sender
    require stor7[address(msg.sender)]
    if cap > 0:
        require arg2 + totalSupply >= totalSupply
        if arg2 + totalSupply > cap:
            revert with 0, 'Can not mint to value <= cap'
    require msg.sender
    require stor7[address(msg.sender)]
    require arg1
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}



}
