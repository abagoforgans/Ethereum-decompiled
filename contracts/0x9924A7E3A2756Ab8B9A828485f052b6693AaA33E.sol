contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function liquidityStatus() {
    return bool(uint8(stor1.field_160))
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function accountFrozenStatus(address arg1) {
    return bool(stor3[address(arg1)])
}

function owner() {
    return owner
}

function transferable() {
    return bool(uint8(stor1.field_160))
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor3[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function UBSexToken() {
    owner = msg.sender
    totalSupply = 190000000 * 10^18
    balanceOf[address(stor1.field_0)] = totalSupply
}

function switchLiquidity(bool arg1) {
    if owner != msg.sender:
        emit InvalidCaller(msg.sender);
        revert
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
    return 1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        emit InvalidCaller(msg.sender);
        revert
    if arg1:
        owner = arg1
        emit OwnershipTransferred(owner, owner);
}

function freezeAccount(address arg1, bool arg2) {
    if owner != msg.sender:
        emit InvalidCaller(msg.sender);
        revert
    stor3[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    require not stor3[address(msg.sender)]
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require not stor3[address(msg.sender)]
    if not uint8(stor1.field_160):
        emit LiquidityAlarm(Array(len=29, data='The liquidity is switched off'));
        revert
    if stor3[address(arg1)]:
        emit InvalidAccount(Array(len=30, data='The receiver account is frozen'), arg1);
    else:
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require not stor3[address(msg.sender)]
    if not uint8(stor1.field_160):
        emit LiquidityAlarm(Array(len=29, data='The liquidity is switched off'));
        revert
    require not stor3[address(arg1)]
    require not stor3[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}



}
