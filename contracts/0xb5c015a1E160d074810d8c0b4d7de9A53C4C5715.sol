contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor6;
address stor6; offset 8

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function stopped() {
    return bool(uint8(stor6.field_0))
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function stop() {
    require address(stor6.field_8) == msg.sender
    uint8(stor6.field_0) = 1
}

function start() {
    require address(stor6.field_8) == msg.sender
    uint8(stor6.field_0) = 0
}

function setName(string arg1) {
    require address(stor6.field_8) == msg.sender
    name[] = Array(len=arg1.length, data=arg1[all])
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[0] += arg1
    emit Transfer(arg1, msg.sender, 0);
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor6.field_0)
    require msg.sender != 0
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor6.field_0)
    require msg.sender != 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor6.field_0)
    require msg.sender != 0
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
