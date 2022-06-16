contract main {




// =====================  Runtime code  =====================


uint256 decimals;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor6;
address stor6; offset 8

function name() {
    return name[0 len name.length]
}

function sub_1198bc0e(?) {
    return bool(uint8(stor6.field_0))
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_2f317396(?) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor6.field_8)
    uint8(stor6.field_0) = uint8(arg1)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require uint8(stor6.field_0)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(msg.sender, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require uint8(stor6.field_0)
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(msg.sender, arg1, arg2);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    require uint8(stor6.field_0)
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg1, arg2, arg3);
    return 1
}



}
