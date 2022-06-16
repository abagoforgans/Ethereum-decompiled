contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
address managerAddress;
address newManagerAddress;
uint256 stor4;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor11;
uint8 stor11; offset 8
uint256 stor11; offset 8
mapping of uint256 frozenAccount;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function newManager() {
    return newManagerAddress
}

function manager() {
    return managerAddress
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

function frozenAccount(address arg1) {
    return frozenAccount[arg1]
}

function isTokenLocked() {
    return bool(uint8(stor11.field_0))
}

function isUseFreeze() {
    return bool(uint8(stor11.field_8))
}

function newOwner() {
    return newOwner
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

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function setLockToken(bool arg1) {
    require msg.sender == owner
    uint8(stor11.field_0) = uint8(arg1)
}

function transferManager(address arg1) {
    if owner != msg.sender:
        require msg.sender == managerAddress
    newManagerAddress = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    owner = newOwner
    newOwner = 0
    emit TransferOwnership(owner, newOwner);
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setUseFreeze(bool arg1) {
    if owner != msg.sender:
        require msg.sender == managerAddress
    Mask(248, 0, stor11.field_8) = Mask(248, 0, arg1)
}

function acceptManager() {
    require msg.sender == newManagerAddress
    managerAddress = newManagerAddress
    newManagerAddress = 0
    emit TransferManager(managerAddress, newManagerAddress);
}

function freezeAmount(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender == managerAddress
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
    stor4++
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor4 + 1 == stor4
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor11.field_0)
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] > balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    if 1 == bool(uint8(stor11.field_8)):
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
    require not uint8(stor11.field_0)
    require arg3 <= balanceOf[address(arg1)]
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] > balanceOf[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    if 1 == bool(uint8(stor11.field_8)):
        require balanceOf[address(arg1)] - arg3 >= frozenAccount[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
