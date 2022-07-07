contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
uint8 stor1;
mapping of uint8 stor2;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
address controllerAddress; offset 8

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function status() {
    return bool(stor1)
}

function decimals() {
    return decimals
}

function controllerAddress() {
    return controllerAddress
}

function balanceOf(address arg1) {
    require bool(stor1) == 1
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor2[arg1])
}

function allowance(address arg1, address arg2) {
    require bool(stor1) == 1
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function turnon() {
    require msg.sender == controllerAddress
    stor1 = 1
}

function turnoff() {
    require msg.sender == controllerAddress
    stor1 = 0
}

function approve(address arg1, uint256 arg2) {
    require bool(stor1) == 1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require bool(stor1) == 1
    require msg.sender == controllerAddress
    stor2[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require bool(stor1) == 1
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    require totalSupply >= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require bool(stor1) == 1
    require msg.sender == controllerAddress
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 >= arg2
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require bool(stor1) == 1
    require not stor2[address(msg.sender)]
    require not stor2[address(arg1)]
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if not arg1:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require bool(stor1) == 1
    require not stor2[address(arg1)]
    require not stor2[address(arg2)]
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
