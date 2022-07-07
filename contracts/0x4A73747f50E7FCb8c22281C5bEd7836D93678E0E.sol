contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 INITIAL_SUPPLY;
mapping of uint256 freezedBalanceOf;
mapping of uint256 stor9;
mapping of uint8 stor10;
uint256 stor11;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function freezedBalanceOf(address arg1) {
    return freezedBalanceOf[address(arg1)]
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
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

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'only owner'
    if uint8(stor3.field_160):
        revert with 0, 'paused'
    Mask(96, 0, stor3.field_160) = 1
    emit 0x6985a022 
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'only owner'
    if not uint8(stor3.field_160):
        revert with 0, 'not paused'
    Mask(96, 0, stor3.field_160) = 0
    emit 0x7805862f 
}

function frozenAccount(address arg1, bool arg2) {
    if owner != msg.sender:
        revert with 0, 'only owner'
    stor10[address(arg1)] = uint8(arg2)
    emit IsFrozenAccount(address(arg1), arg2);
    return 1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only owner'
    if not arg1:
        revert with 0, 'black hole'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if uint8(stor3.field_160):
        revert with 0, 'paused'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    if uint8(stor3.field_160):
        revert with 0, 'paused'
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if uint8(stor3.field_160):
        revert with 0, 'paused'
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'only owner'
    if arg1 > balanceOf[address(msg.sender)] - freezedBalanceOf[address(msg.sender)]:
        revert with 0, 'burn insuffient balance'
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require balanceOf + arg1 >= balanceOf
    balanceOf += arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function sub_50f69ca2(?) {
    if owner != msg.sender:
        revert with 0, 'only owner'
    if freezedBalanceOf[address(arg1)] <= 0:
        revert with 0, 'fund freezed balance insufficent'
    if arg2 >= freezedBalanceOf[address(arg1)]:
        freezedBalanceOf[address(arg1)] = 0
    else:
        require arg2 <= freezedBalanceOf[address(arg1)]
        freezedBalanceOf[address(arg1)] -= arg2
    emit ReleaseFund(arg2, arg1);
    return 1
}

function fund(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'only owner'
    if not arg1:
        revert with 0, 'black hole'
    if stor11 < arg2:
        revert with 0, 'found blance insufficent'
    require arg2 <= stor11
    stor11 -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require freezedBalanceOf[address(arg1)] + arg2 >= freezedBalanceOf[address(arg1)]
    freezedBalanceOf[address(arg1)] += arg2
    require stor9[address(arg1)] + arg2 >= stor9[address(arg1)]
    stor9[address(arg1)] += arg2
    emit Fund(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if stor10[address(msg.sender)]:
        revert with 0, 'freezed account'
    if arg2 > balanceOf[address(msg.sender)] - freezedBalanceOf[address(msg.sender)]:
        revert with 0, 'freezed balance'
    if uint8(stor3.field_160):
        revert with 0, 'paused'
    if not arg1:
        revert with 0, 'black hole'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'insufficent balance'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > balanceOf[address(arg1)] - freezedBalanceOf[address(arg1)]:
        revert with 0, 'insufficent balance'
    if uint8(stor3.field_160):
        revert with 0, 'paused'
    if not arg2:
        revert with 0, 'black hole'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'insufficent balance'
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'insufficent approve'
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
