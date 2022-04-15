contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint8 stor3; offset 160
address stor3;

function _fallback() payable {
    uint8(stor3.field_160) = 0
    require not msg.value
    address(stor3.field_0) = msg.sender
    stor0 = 10^13 * 3600
    stor1[address(msg.sender)] = 10^13 * 3600
    return code.data[113 len 3642]
}



// =====================  Runtime code  =====================


const name = 'BattleOfTitans'

const decimals = 8

const sub_4a27c68f(?) = 1505873400

const sub_6379ce34(?) = 1

const sub_69d87c04(?) = 1

const total_freeze_term = 1

const symbol = 'BTT'

const launch_date = 1505872200

const sub_e201ad38(?) = 1505872820

const INITIAL_SUPPLY = (10^13 * 3600)


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
mapping of uint256 frozenAccount;

function totalSupply() {
    return totalSupply
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
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function unpause() {
    require owner == msg.sender
    require stor3
    stor3 = 0
    emit Unpause()
    return 1
}

function pause() {
    require owner == msg.sender
    require not stor3
    stor3 = 1
    emit Pause()
    return 1
}

function freezeAccount(address arg1, uint256 arg2) {
    require owner == msg.sender
    require block.timestamp < 1505872201
    frozenAccount[address(arg1)] = arg2
    emit FrozenFunds(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    require not stor3
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require block.timestamp > 1505872820
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(msg.sender, arg1);
}

function freezeCheck(address arg1, uint256 arg2) {
    if frozenAccount[address(arg1)] > 0:
        require block.timestamp < 1505873401
    if -block.timestamp + 1505873402 >= 0:
        require (1505873402 * frozenAccount[address(arg1)]) - (block.timestamp * frozenAccount[address(arg1)]) + arg2 >= arg2
        require balanceOf[address(arg1)] >= (1505873402 * frozenAccount[address(arg1)]) - (block.timestamp * frozenAccount[address(arg1)]) + arg2
    else:
        require arg2 >= arg2
        require balanceOf[address(arg1)] >= arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor3
    if frozenAccount[address(msg.sender)] > 0:
        require block.timestamp < 1505873401
    if -block.timestamp + 1505873402 >= 0:
        require (1505873402 * frozenAccount[address(msg.sender)]) - (block.timestamp * frozenAccount[address(msg.sender)]) + arg2 >= arg2
        require balanceOf[address(msg.sender)] >= (1505873402 * frozenAccount[address(msg.sender)]) - (block.timestamp * frozenAccount[address(msg.sender)]) + arg2
    else:
        require arg2 >= arg2
        require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor3
    if frozenAccount[address(msg.sender)] > 0:
        require block.timestamp < 1505873401
    if -block.timestamp + 1505873402 >= 0:
        require (1505873402 * frozenAccount[address(msg.sender)]) - (block.timestamp * frozenAccount[address(msg.sender)]) + arg3 >= arg3
        require balanceOf[address(msg.sender)] >= (1505873402 * frozenAccount[address(msg.sender)]) - (block.timestamp * frozenAccount[address(msg.sender)]) + arg3
    else:
        require arg3 >= arg3
        require balanceOf[address(msg.sender)] >= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
