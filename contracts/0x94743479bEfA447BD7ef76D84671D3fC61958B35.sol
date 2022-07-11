contract main {




// =====================  Runtime code  =====================


const name = 'Muze creative'

const decimals = 18

const symbol = 'MZC'

const INITIAL_SUPPLY = 5000000000 * 10^18


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address operatorAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor5;
array of struct grantedLocks;

function mintingFinished() {
    return bool(stor5)
}

function grantedLocks(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < grantedLocks[arg1].field_0
    return grantedLocks[arg1][arg2].field_0, grantedLocks[arg1][arg2].field_256
}

function totalSupply() {
    return totalSupply
}

function operator() {
    return operatorAddress
}

function paused() {
    return bool(uint8(stor1.field_160))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
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

function isOperator() {
    return (msg.sender == operatorAddress)
}

function finishMinting() {
    require not uint8(stor1.field_160)
    require msg.sender == owner
    require not stor5
    stor5 = 1
    emit MintFinished()
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function unpause() {
    if owner != msg.sender:
        require msg.sender == operatorAddress
    require uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 0
    emit Unpaused(msg.sender);
}

function pause() {
    if owner != msg.sender:
        require msg.sender == operatorAddress
    require not uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 1
    emit Paused(msg.sender);
}

function transferOperator(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OperatorTransferred(operatorAddress, arg1);
    operatorAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor1.field_160)
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not uint8(stor1.field_160)
    require msg.sender == owner
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor1.field_160)
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor1.field_160)
    require msg.sender == owner
    require not stor5
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor1.field_160)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function addLock(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not uint8(stor1.field_160)
    if owner != msg.sender:
        require msg.sender == operatorAddress
    require arg2 > 0
    require arg3 > block.timestamp
    grantedLocks[address(arg1)].field_0++
    grantedLocks[address(arg1)][grantedLocks[address(arg1)].field_0].field_0 = arg2
    grantedLocks[address(arg1)][grantedLocks[address(arg1)].field_0].field_256 = arg3
}

function getLockedAmount(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < grantedLocks[address(arg1)].field_0:
        mem[32] = 6
        require idx < grantedLocks[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 6)
        if block.timestamp >= grantedLocks[address(arg1)][idx].field_256:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 6
        require idx < grantedLocks[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 6)
        require s + grantedLocks[address(arg1)][idx].field_0 >= s
        idx = idx + 1
        s = s + grantedLocks[address(arg1)][idx].field_0
        continue 
    return s
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor1.field_160)
    idx = 0
    s = 0
    while idx < grantedLocks[address(msg.sender)].field_0:
        mem[32] = 6
        require idx < grantedLocks[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 6)
        if block.timestamp >= grantedLocks[address(msg.sender)][idx].field_256:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 6
        require idx < grantedLocks[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 6)
        require s + grantedLocks[address(msg.sender)][idx].field_0 >= s
        idx = idx + 1
        s = s + grantedLocks[address(msg.sender)][idx].field_0
        continue 
    require s <= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] - s >= arg2
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function deleteLock(address arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor1.field_160)
    if owner != msg.sender:
        require msg.sender == operatorAddress
    require grantedLocks[address(arg1)].field_0 > arg2
    if grantedLocks[address(arg1)].field_0 == 1:
        grantedLocks[address(arg1)].field_0 = 0
        idx = 0
        while 2 * grantedLocks[address(arg1)].field_0 > idx:
            grantedLocks[address(arg1)][idx].field_0 = 0
            grantedLocks[address(arg1)][idx].field_256 = 0
            idx = idx + 2
            continue 
    else:
        require grantedLocks[address(arg1)].field_0 - 1 < grantedLocks[address(arg1)].field_0
        if grantedLocks[address(arg1)].field_0 - 1 != arg2:
            require arg2 < grantedLocks[address(arg1)].field_0
            grantedLocks[address(arg1)][2 * uint8(arg2)].field_0 = grantedLocks[address(arg1)][grantedLocks[address(arg1)].field_0 - 1].field_0
            grantedLocks[address(arg1)][2 * uint8(arg2)].field_256 = grantedLocks[address(arg1)][grantedLocks[address(arg1)].field_0 - 1].field_256
        grantedLocks[address(arg1)][grantedLocks[address(arg1)].field_0 - 1].field_0 = 0
        grantedLocks[address(arg1)][grantedLocks[address(arg1)].field_0 - 1].field_256 = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not uint8(stor1.field_160)
    idx = 0
    s = 0
    while idx < grantedLocks[address(arg1)].field_0:
        mem[32] = 6
        require idx < grantedLocks[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 6)
        if block.timestamp >= grantedLocks[address(arg1)][idx].field_256:
            idx = idx + 1
            s = s
            continue 
        mem[32] = 6
        require idx < grantedLocks[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 6)
        require s + grantedLocks[address(arg1)][idx].field_0 >= s
        idx = idx + 1
        s = s + grantedLocks[address(arg1)][idx].field_0
        continue 
    require s <= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] - s >= arg3
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
