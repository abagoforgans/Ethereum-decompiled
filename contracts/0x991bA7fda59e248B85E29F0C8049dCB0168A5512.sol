contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
uint128 stor3; offset 160
address stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    stor4 = 1555496448
    stor5 = 4320 * 24 * 3600
    require not msg.value
    address(stor3.field_0) = msg.sender
    require msg.sender == address(stor3.field_0)
    require code.data[6793 len 20]
    emit OwnershipTransferred(address(stor3.field_0), code.data[6793 len 20]);
    address(stor3.field_0) = code.data[6793 len 20]
    stor1[code.data[6761 len 20]] = -code.data[6813 len 32] + 10^15
    stor1[address(code.data[6781 len 32])] = code.data[6813 len 32]
    emit Transfer(10^15, 0, code.data[6761 len 20]);
    emit Transfer(code.data[6813 len 32], code.data[6761 len 20], code.data[6793 len 20]);
    return code.data[904 len 5845]
}



// =====================  Runtime code  =====================


const name = 'BQCC Token'

const totalSupply = 10^15

const decimals = 6

const symbol = 'BQCC'


mapping of uint256 balances;
mapping of uint256 allowed;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
uint256 stor4;
uint256 stor5;
mapping of struct balanceLocks;

function balances(address arg1) {
    return balances[arg1]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function balanceLocks(address arg1) {
    return balanceLocks[arg1].field_0, balanceLocks[arg1].field_256
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function availableBalance(address arg1) {
    if balanceLocks[address(arg1)].field_256 < block.timestamp:
        return balances[address(arg1)]
    require balances[address(arg1)] >= balanceLocks[address(arg1)].field_0
    return (balances[address(arg1)] - balanceLocks[address(arg1)].field_0)
}

function lockBalance(address arg1, uint256 arg2) {
    require msg.sender == owner
    if balanceLocks[address(arg1)].field_256 > block.timestamp:
        require arg2 >= balanceLocks[address(arg1)].field_0
    require balances[address(arg1)] >= arg2
    emit BalanceLocked(balanceLocks[address(arg1)].field_0, arg2, block.timestamp + stor5, arg1);
    balanceLocks[address(arg1)].field_0 = arg2
    balanceLocks[address(arg1)].field_256 = block.timestamp + stor5
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp >= stor4
    require not uint8(stor3.field_160)
    if balanceLocks[address(msg.sender)].field_256 < block.timestamp:
        require balances[address(msg.sender)] >= arg2
    else:
        require balances[address(msg.sender)] >= balanceLocks[address(msg.sender)].field_0
        require balances[address(msg.sender)] - balanceLocks[address(msg.sender)].field_0 >= arg2
    require balances[address(msg.sender)] >= arg2
    require balances[address(arg1)] + arg2 > balances[address(arg1)]
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg1 != owner:
        require block.timestamp >= stor4
    require not uint8(stor3.field_160)
    if balanceLocks[address(arg1)].field_256 < block.timestamp:
        require balances[address(arg1)] >= arg3
    else:
        require balances[address(arg1)] >= balanceLocks[address(arg1)].field_0
        require balances[address(arg1)] - balanceLocks[address(arg1)].field_0 >= arg3
    require balances[address(arg1)] >= arg3
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    require balances[address(arg2)] + arg3 > balances[address(arg2)]
    balances[address(arg2)] += arg3
    balances[address(arg1)] -= arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
