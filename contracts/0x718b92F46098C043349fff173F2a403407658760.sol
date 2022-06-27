contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor8;
uint8 stor8; offset 8
uint256 stor8; offset 8
mapping of uint256 frozenAccount;
mapping of uint8 stor10;

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
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function whitelist(address arg1) {
    return bool(stor10[arg1])
}

function frozenAccount(address arg1) {
    return frozenAccount[arg1]
}

function isTokenLocked() {
    return bool(uint8(stor8.field_0))
}

function isUseFreeze() {
    return bool(uint8(stor8.field_8))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function isFrozen(address arg1) {
    return frozenAccount[address(arg1)]
}

function _fallback() payable {
    revert
}

function setLockToken(bool arg1) {
    require msg.sender == owner
    uint8(stor8.field_0) = uint8(arg1)
}

function setUseFreeze(bool arg1) {
    require msg.sender == owner
    Mask(248, 0, stor8.field_8) = Mask(248, 0, arg1)
}

function setWhitelist(address arg1, bool arg2) {
    require msg.sender == owner
    stor10[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function freezeAmount(address arg1, uint256 arg2) {
    require msg.sender == owner
    frozenAccount[address(arg1)] = arg2
    emit FrozenFunds(arg2, arg1);
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    stor1++
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor1 + 1 == stor1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if uint8(stor8.field_0):
        if not stor10[msg.sender]:
            revert with 0, 'account not in whitelist'
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] > balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    if 1 == bool(uint8(stor8.field_8)):
        require balanceOf[address(msg.sender)] - arg2 >= frozenAccount[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    if uint8(stor8.field_0):
        if not stor10[msg.sender]:
            revert with 0, 'account not in whitelist'
    require arg3 <= balanceOf[address(arg1)]
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] > balanceOf[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    if 1 == bool(uint8(stor8.field_8)):
        require balanceOf[address(arg1)] - arg3 >= frozenAccount[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
