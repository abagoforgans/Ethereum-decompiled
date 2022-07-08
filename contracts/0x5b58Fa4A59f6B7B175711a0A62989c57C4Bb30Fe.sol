contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address owner;
uint8 stor5; offset 160
uint8 stor5; offset 168
uint128 stor5; offset 168
uint128 stor5; offset 160
address stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function transferEnabled() {
    return bool(uint8(stor5.field_160))
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function removeLock(address arg1) {
    require msg.sender == owner
    stor6[address(arg1)] = 0
    return 1
}

function changeOwner(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    address(stor5.field_0) = arg1
}

function setExclude(address arg1, bool arg2) {
    require msg.sender == owner
    stor7[address(arg1)] = uint8(arg2)
    return 1
}

function disableLock(bool arg1) {
    require msg.sender == owner
    Mask(88, 0, stor5.field_168) = Mask(88, 0, arg1)
    return 1
}

function enableTransfer(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor5.field_160) = Mask(96, 0, arg1)
    return 1
}

function addLock(address arg1) {
    require msg.sender == owner
    require arg1 != msg.sender
    stor6[address(arg1)] = 1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function acceptOwnership() {
    require msg.sender == address(stor5.field_0)
    emit OwnerUpdate(owner, address(stor5.field_0));
    owner = address(stor5.field_0)
    address(stor5.field_0) = 0
}

function transfer(address arg1, uint256 arg2) {
    if not stor7[address(msg.sender)]:
        if not uint8(stor5.field_160):
            revert with 0, 'transfer is not enabeled now!'
        if uint8(stor5.field_168):
            if stor6[address(msg.sender)]:
                revert with 0, 'you are locked!'
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor7[address(arg1)]:
        if not uint8(stor5.field_160):
            revert with 0, 'transfer is not enabeled now!'
        if uint8(stor5.field_168):
            if stor6[address(arg1)]:
                revert with 0, 'you are locked!'
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
