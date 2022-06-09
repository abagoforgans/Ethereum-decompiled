contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint128 stor4; offset 168
uint128 stor4; offset 160
address owner;
mapping of uint256 balanceOf;
mapping of uint256 freezeOf;
mapping of uint256 allowance;
mapping of uint8 stor8;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function lockOf(address arg1) {
    return bool(stor8[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9c0504ae(?) {
    return bool(uint8(stor4.field_160))
}

function freezeOf(address arg1) {
    return freezeOf[arg1]
}

function sub_d874b7b9(?) {
    return bool(uint8(stor4.field_168))
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function lockTransfer() {
    require msg.sender == owner
    Mask(88, 0, stor4.field_168) = 1
    return 1
}

function unlockTransfer() {
    require msg.sender == owner
    Mask(88, 0, stor4.field_168) = 0
    return 1
}

function lockAccount(address arg1) {
    require msg.sender == owner
    stor8[address(arg1)] = 1
    return 1
}

function unlockAccount(address arg1) {
    require msg.sender == owner
    stor8[address(arg1)] = 0
    return 1
}

function setMovePermissionStat(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function changeSymbol(string arg1) {
    require msg.sender == owner
    symbol[] = Array(len=arg1.length, data=arg1[all])
    return 0
}

function changeTokenName(string arg1) {
    require msg.sender == owner
    name[] = Array(len=arg1.length, data=arg1[all])
    return 1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    require arg2 > 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnSupply(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 <= balanceOf[address(stor4.field_0)]
    balanceOf[address(stor4.field_0)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit BurnSupply(arg1, msg.sender);
    return 1
}

function freeze(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg1 != owner
    require arg2 > 0
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require freezeOf[address(arg1)] + arg2 >= freezeOf[address(arg1)]
    require freezeOf[address(arg1)] + arg2 >= arg2
    freezeOf[address(arg1)] += arg2
    emit Freeze(arg2, arg1);
    return 1
}

function unFreeze(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg1 != owner
    require arg2 > 0
    require arg2 <= freezeOf[address(arg1)]
    freezeOf[address(arg1)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Unfreeze(arg2, arg1);
    return 1
}

function addSupply(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + arg1 >= arg1
    balanceOf[address(msg.sender)] += arg1
    require totalSupply + arg1 >= totalSupply
    require totalSupply + arg1 >= arg1
    totalSupply += arg1
    emit AddSupply(arg1, msg.sender);
    return 1
}

function movePermission(address arg1) {
    require msg.sender == owner
    require uint8(stor4.field_160)
    require balanceOf[address(arg1)] + balanceOf[address(stor4.field_0)] >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + balanceOf[address(stor4.field_0)] >= balanceOf[address(stor4.field_0)]
    balanceOf[address(arg1)] += balanceOf[address(stor4.field_0)]
    balanceOf[address(stor4.field_0)] = 0
    owner = arg1
    emit MovePermission(msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor4.field_168)
    require not stor8[address(msg.sender)]
    require arg1
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function unFreezeAll(address arg1) {
    require msg.sender == owner
    require arg1
    require arg1 != owner
    require freezeOf[address(arg1)] > 0
    require freezeOf[address(arg1)] <= freezeOf[address(arg1)]
    freezeOf[address(arg1)] = 0
    require balanceOf[address(arg1)] + freezeOf[address(arg1)] >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + freezeOf[address(arg1)] >= freezeOf[address(arg1)]
    balanceOf[address(arg1)] += freezeOf[address(arg1)]
    emit Unfreeze(freezeOf[address(arg1)], arg1);
    return 1
}

function freezeAll(address arg1) {
    require msg.sender == owner
    require arg1
    require arg1 != owner
    require balanceOf[address(arg1)] > 0
    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    require freezeOf[address(arg1)] + balanceOf[address(arg1)] >= freezeOf[address(arg1)]
    require freezeOf[address(arg1)] + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    freezeOf[address(arg1)] += balanceOf[address(arg1)]
    emit Freeze(balanceOf[address(arg1)], arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 > 0
    require not uint8(stor4.field_168)
    require not stor8[address(arg1)]
    require balanceOf[address(arg1)] >= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
