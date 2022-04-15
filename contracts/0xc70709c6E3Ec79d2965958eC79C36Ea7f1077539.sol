contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint128 stor3; offset 160
address stor3;

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    require not msg.value
    address(stor3.field_0) = msg.sender
    stor0 = 10^13 * 3600
    stor1[address(msg.sender)] = 10^13 * 3600
    return code.data[228 len 5943]
}



// =====================  Runtime code  =====================


const name = 'BattleOfTitans'

const decimals = 8

const unfreeze_period_time = (24 * 3600)

const unfreeze_periods = 150

const unfreeze_start_date = (423072 * 24 * 3600)

const symbol = 'BTT'

const launch_date = (428328 * 24 * 3600)

const unfreeze_end_date = (426672 * 24 * 3600)

const INITIAL_SUPPLY = (10^13 * 3600)


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
mapping of uint256 frozenAccount;

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function frozenAccount(address arg1) {
    return frozenAccount[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
    return 1
}

function freezeAccount(address arg1, uint256 arg2) {
    require msg.sender == owner
    require block.timestamp < 428328 * 24 * 3600
    frozenAccount[address(arg1)] = arg2
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeCheck(address arg1, uint256 arg2) {
    if block.timestamp < 423072 * 24 * 3600:
        require frozenAccount[address(arg1)] <= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] - frozenAccount[address(arg1)] >= arg2
    else:
        if block.timestamp < 426672 * 24 * 3600:
            require frozenAccount[address(arg1)] / 150 * -block.timestamp + (426672 * 24 * 3600) / 24 * 3600 <= balanceOf[address(arg1)]
            require balanceOf[address(arg1)] - (frozenAccount[address(arg1)] / 150 * -block.timestamp + (426672 * 24 * 3600) / 24 * 3600) >= arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if block.timestamp < 423072 * 24 * 3600:
        require frozenAccount[address(msg.sender)] <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] - frozenAccount[address(msg.sender)] >= arg2
    else:
        if block.timestamp < 426672 * 24 * 3600:
            require frozenAccount[address(msg.sender)] / 150 * -block.timestamp + (426672 * 24 * 3600) / 24 * 3600 <= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] - (frozenAccount[address(msg.sender)] / 150 * -block.timestamp + (426672 * 24 * 3600) / 24 * 3600) >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    if block.timestamp < 423072 * 24 * 3600:
        require frozenAccount[address(msg.sender)] <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] - frozenAccount[address(msg.sender)] >= arg3
    else:
        if block.timestamp < 426672 * 24 * 3600:
            require frozenAccount[address(msg.sender)] / 150 * -block.timestamp + (426672 * 24 * 3600) / 24 * 3600 <= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] - (frozenAccount[address(msg.sender)] / 150 * -block.timestamp + (426672 * 24 * 3600) / 24 * 3600) >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
