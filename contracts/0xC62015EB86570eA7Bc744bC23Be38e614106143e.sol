contract main {




// =====================  Runtime code  =====================


const name = 'TokenX'

const decimals = 18

const symbol = 'TOX'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor3;
uint8 stor4;
address owner; offset 8
mapping of uint8 stor5;
uint8 stor6;
mapping of uint8 stor7;

function mintingFinished() {
    return bool(stor4)
}

function totalSupply() {
    return totalSupply
}

function frozenToken() {
    return bool(stor6)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function frozenAccounts(address arg1) {
    return bool(stor7[arg1])
}

function owner() {
    return owner
}

function isMinter(address arg1) {
    require arg1
    return bool(stor3[address(arg1)])
}

function superAdmins(address arg1) {
    return bool(stor5[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceMinter() {
    require msg.sender
    stor3[address(msg.sender)] = 0
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finishMinting() {
    require msg.sender
    require stor3[address(msg.sender)]
    require not stor4
    stor4 = 1
    emit MintingFinished()
    return 1
}

function addMinter(address arg1) {
    require msg.sender
    require stor3[address(msg.sender)]
    require arg1
    stor3[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function freezeToken(bool arg1) {
    if owner != msg.sender:
        require stor5[address(msg.sender)]
    require bool(stor6) != arg1
    stor6 = uint8(arg1)
    emit FrozenToken(bool(stor6));
}

function addSuperAdmin(address arg1) {
    require msg.sender == owner
    require arg1
    require arg1 != this.address
    require not stor5[address(arg1)]
    stor5[address(arg1)] = 1
    emit AddSuperAdmin(arg1);
}

function removeSuperAdmin(address arg1) {
    require msg.sender == owner
    require arg1
    require arg1 != this.address
    require stor5[address(arg1)]
    stor5[address(arg1)] = 0
    emit RemoveSuperAdmin(arg1);
}

function freezeAccount(address arg1, bool arg2) {
    if owner != msg.sender:
        require stor5[address(msg.sender)]
    require arg1
    require arg1 != this.address
    require bool(stor7[address(arg1)]) != arg2
    stor7[address(arg1)] = uint8(arg2)
    emit FrozenFunds(arg2, arg1);
}

function burn(uint256 arg1) {
    require msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function approve(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require not stor6
    require not stor7[address(msg.sender)]
    require not stor7[address(arg1)]
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender
    require stor3[address(msg.sender)]
    require not stor4
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require not stor6
    require not stor7[address(msg.sender)]
    require not stor7[address(arg1)]
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg1
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require not stor6
    require not stor7[address(msg.sender)]
    require not stor7[address(arg1)]
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require not stor6
    require not stor7[address(msg.sender)]
    require not stor7[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg2 != this.address
    require not stor6
    require not stor7[address(msg.sender)]
    require not stor7[address(arg1)]
    require not stor7[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
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
