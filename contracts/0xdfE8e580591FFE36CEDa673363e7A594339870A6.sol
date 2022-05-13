contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 stor7;
mapping of uint256 stor8;
mapping of uint256 allowance;
mapping of uint256 lockupBalanceOf;
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

function lockupBalanceOf(address arg1) {
    return lockupBalanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    newOwner = arg1
}

function approve(address arg1, uint256 arg2) {
    require arg2 > 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) {
    require stor8[address(arg1)] + lockupBalanceOf[address(arg1)] >= stor8[address(arg1)]
    return (stor8[address(arg1)] + lockupBalanceOf[address(arg1)])
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= stor8[address(msg.sender)]
    require arg1 <= stor8[address(msg.sender)]
    stor8[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    return 1
}

function unlock() {
    require lockupBalanceOf[address(msg.sender)] > 0
    require unlockTimeOf[address(msg.sender)] <= block.timestamp
    require stor8[address(msg.sender)] + lockupBalanceOf[address(msg.sender)] >= stor8[address(msg.sender)]
    stor8[address(msg.sender)] += lockupBalanceOf[address(msg.sender)]
    lockupBalanceOf[address(msg.sender)] = 0
    return 1
}

function acceptOwnership() {
    require msg.sender
    require msg.sender == newOwner
    require stor8[stor0] <= stor8[stor0]
    stor8[stor0] = 0
    require stor8[stor1] + stor8[stor0] >= stor8[stor1]
    stor8[stor1] += stor8[stor0]
    emit Transfer(stor8[stor0], owner, newOwner);
    owner = newOwner
    newOwner = 0
    emit OwnershipTransferred(owner, newOwner);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require msg.sender
    require arg2 <= stor8[address(msg.sender)]
    require arg2 <= stor8[address(msg.sender)]
    stor8[address(msg.sender)] -= arg2
    require stor8[address(arg1)] + arg2 >= stor8[address(arg1)]
    stor8[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require arg2 != this.address
    require arg3 <= stor8[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= stor8[address(arg1)]
    stor8[address(arg1)] -= arg3
    require stor8[address(arg2)] + arg3 >= stor8[address(arg2)]
    stor8[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function distribute(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    require arg1 != this.address
    require not lockupBalanceOf[address(arg1)]
    require arg2 <= stor8[stor0]
    if arg3 != 50:
        require arg3 == 100
    require arg2 <= stor8[stor0]
    stor8[stor0] -= arg2
    if not arg2:
        require 0 <= arg2
        require stor8[address(arg1)] + arg2 >= stor8[address(arg1)]
        stor8[address(arg1)] += arg2
        require lockupBalanceOf[address(arg1)] >= lockupBalanceOf[address(arg1)]
        if arg3 != 100:
            unlockTimeOf[address(arg1)] = block.timestamp + stor7
        else:
            unlockTimeOf[address(arg1)] = block.timestamp + (2 * stor7)
    else:
        require arg2
        require arg2 * arg3 / arg2 == arg3
        require arg2 * arg3 / 100 <= arg2
        require stor8[address(arg1)] + arg2 - (arg2 * arg3 / 100) >= stor8[address(arg1)]
        stor8[address(arg1)] = stor8[address(arg1)] + arg2 - (arg2 * arg3 / 100)
        require lockupBalanceOf[address(arg1)] + (arg2 * arg3 / 100) >= lockupBalanceOf[address(arg1)]
        lockupBalanceOf[address(arg1)] += arg2 * arg3 / 100
        if arg3 != 100:
            unlockTimeOf[address(arg1)] = block.timestamp + stor7
        else:
            unlockTimeOf[address(arg1)] = block.timestamp + (2 * stor7)
    emit Transfer(arg2, owner, arg1);
    return 1
}



}
