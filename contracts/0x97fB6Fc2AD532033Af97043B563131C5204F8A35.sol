contract main {




// =====================  Runtime code  =====================


const name = 'PlusCoin'

const decimals = 18

const symbol = 'NPLC'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
mapping of uint8 stor4;
uint8 stor5;
mapping of uint8 stor6;

function totalSupply() {
    return totalSupply
}

function frozenToken() {
    return bool(stor5)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function frozenAccounts(address arg1) {
    return bool(stor6[arg1])
}

function owner() {
    return owner
}

function superAdmins(address arg1) {
    return bool(stor4[arg1])
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

function freezeToken(bool arg1) {
    if owner != msg.sender:
        require stor4[address(msg.sender)]
    require bool(stor5) != arg1
    stor5 = uint8(arg1)
    emit FrozenToken(bool(stor5));
}

function addSuperAdmin(address arg1) {
    require msg.sender == owner
    require arg1
    require arg1 != this.address
    require not stor4[address(arg1)]
    stor4[address(arg1)] = 1
    emit AddSuperAdmin(arg1);
}

function removeSuperAdmin(address arg1) {
    require msg.sender == owner
    require arg1
    require arg1 != this.address
    require stor4[address(arg1)]
    stor4[address(arg1)] = 0
    emit RemoveSuperAdmin(arg1);
}

function freezeAccount(address arg1, bool arg2) {
    if owner != msg.sender:
        require stor4[address(msg.sender)]
    require arg1
    require arg1 != this.address
    require bool(stor6[address(arg1)]) != arg2
    stor6[address(arg1)] = uint8(arg2)
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
    require not stor5
    require not stor6[address(msg.sender)]
    require not stor6[address(arg1)]
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function emergencyERC20Drain(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require not stor5
    require not stor6[address(msg.sender)]
    require not stor6[address(arg1)]
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
    require not stor5
    require not stor6[address(msg.sender)]
    require not stor6[address(arg1)]
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require not stor5
    require not stor6[address(msg.sender)]
    require not stor6[address(arg1)]
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
    require not stor5
    require not stor6[address(msg.sender)]
    require not stor6[address(arg1)]
    require not stor6[address(arg2)]
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
