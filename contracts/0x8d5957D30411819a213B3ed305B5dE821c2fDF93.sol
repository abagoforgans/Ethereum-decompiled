contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 stor2;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 INITIAL_SUPPLY;
uint8 released; offset 160
uint8 sub_9fd89c0f; offset 168
uint128 stor7; offset 168
uint128 stor7; offset 160
address stor7;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function released() {
    return bool(released)
}

function sub_9fd89c0f(?) {
    return bool(sub_9fd89c0f)
}

function _fallback() payable {
    revert
}

function allowance(address arg1, address arg2) {
    require released
    return 0
}

function sub_5e57d613(?) {
    require address(stor7.field_0) == msg.sender
    Mask(88, 0, stor7.field_168) = 0
}

function sub_82e74311(?) {
    require address(stor7.field_0) == msg.sender
    Mask(88, 0, stor7.field_168) = 1
}

function lock() {
    require address(stor7.field_0) == msg.sender
    require released
    Mask(96, 0, stor7.field_160) = 0
}

function release() {
    require address(stor7.field_0) == msg.sender
    require not released
    Mask(96, 0, stor7.field_160) = 1
}

function approve(address arg1, uint256 arg2) {
    require released
    stor2[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 0
}

function increaseApproval(address arg1, uint256 arg2) {
    require stor2[address(msg.sender)][address(arg1)] + arg2 >= stor2[address(msg.sender)][address(arg1)]
    stor2[address(msg.sender)][address(arg1)] += arg2
    emit Approval(stor2[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= stor2[address(msg.sender)][address(arg1)]:
        stor2[address(msg.sender)][address(arg1)] -= arg2
    else:
        stor2[address(msg.sender)][address(arg1)] = 0
    emit Approval(stor2[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferAdmin(address arg1, uint256 arg2) {
    require address(stor7.field_0) == msg.sender
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function transfer(address arg1, uint256 arg2) {
    require released
    if not sub_9fd89c0f:
        require address(stor7.field_0) == msg.sender
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require released
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= stor2[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= stor2[address(arg1)][address(msg.sender)]
    stor2[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 0
}



}
