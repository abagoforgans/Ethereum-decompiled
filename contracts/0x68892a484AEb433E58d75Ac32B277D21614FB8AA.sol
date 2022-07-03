contract main {




// =====================  Runtime code  =====================


#
#  - getCurrentFor(address arg1)
#
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
uint256 decimals;
mapping of uint256 stor5;
mapping of address stor6;
mapping of uint256 stor7;
array of address holderAt;
uint256 cap;
array of uint256 symbol;
array of uint256 name;

function mintingFinished() {
    return bool(uint8(stor3.field_160))
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function holderAt(uint256 arg1) {
    require msg.sender == owner
    require arg1 < holderAt.length
    return address(holderAt[arg1])
}

function holderCount() {
    require msg.sender == owner
    return holderAt.length
}

function decimals() {
    return decimals
}

function cap() {
    return cap
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

function isHolder(address arg1) {
    return not not stor7[address(arg1)]
}

function isVerified(address arg1) {
    return not not stor5[address(arg1)]
}

function isSuperseded(address arg1) {
    require msg.sender == owner
    return not not stor6[address(arg1)]
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function hasHash(address arg1, bytes32 arg2) {
    if arg1:
        return (stor5[address(arg1)] == arg2)
    else:
        return 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit MintFinished()
    return 1
}

function removeVerified(address arg1) {
    require msg.sender == owner
    require not balanceOf[address(arg1)]
    if stor5[address(arg1)]:
        stor5[address(arg1)] = 0
        emit VerifiedAddressRemoved(arg1, msg.sender);
}

function addVerified(address arg1, bytes32 arg2) {
    require msg.sender == owner
    require not stor6[address(arg1)]
    require arg1
    require arg2
    require not stor5[address(arg1)]
    stor5[address(arg1)] = arg2
    emit VerifiedAddressAdded(arg2, arg1, msg.sender);
}

function updateVerified(address arg1, bytes32 arg2) {
    require msg.sender == owner
    require stor5[address(arg1)]
    require arg2
    if stor5[address(arg1)] != arg2:
        stor5[address(arg1)] = arg2
        emit VerifiedAddressUpdated(stor5[address(arg1)], arg2, arg1, msg.sender);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function cancelAndReissue(address arg1, address arg2) {
    require msg.sender == owner
    require stor7[address(arg1)]
    require not stor7[address(arg2)]
    require stor5[address(arg2)]
    stor5[address(arg1)] = 0
    stor6[address(arg1)] = arg2
    require stor7[address(arg1)] - 1 < holderAt.length
    address(holderAt[stor7[address(arg1)]]) = arg2
    stor7[address(arg2)] = stor7[address(arg1)]
    stor7[address(arg1)] = 0
    balanceOf[address(arg2)] = balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    emit VerifiedAddressSuperseded(arg1, arg2, msg.sender);
}

function mint(address arg1, uint256 arg2) {
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 <= cap
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require stor5[address(arg1)]
    if not stor7[address(arg1)]:
        holderAt.length++
        address(holderAt[holderAt.length]) = arg1
        stor7[address(arg1)] = holderAt.length + 1
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require stor5[address(arg1)]
    if not stor7[address(arg1)]:
        holderAt.length++
        address(holderAt[holderAt.length]) = arg1
        stor7[address(arg1)] = holderAt.length + 1
    if balanceOf[address(msg.sender)] - arg2 <= 0:
        require holderAt.length - 1 < holderAt.length
        require stor7[address(msg.sender)] - 1 < holderAt.length
        address(holderAt[stor7[address(msg.sender)]]) = address(holderAt[holderAt.length])
        stor7[address(stor8[stor8.length])] = stor7[address(msg.sender)]
        holderAt.length--
        if holderAt.length > holderAt.length - 1:
            idx = holderAt.length - 1
            while holderAt.length > idx:
                uint256(holderAt[idx]) = 0
                idx = idx + 1
                continue 
        stor7[address(msg.sender)] = 0
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
    require stor5[address(arg2)]
    if not stor7[address(arg2)]:
        holderAt.length++
        address(holderAt[holderAt.length]) = arg2
        stor7[address(arg2)] = holderAt.length + 1
    if balanceOf[address(arg1)] - arg3 <= 0:
        require holderAt.length - 1 < holderAt.length
        require stor7[address(arg1)] - 1 < holderAt.length
        address(holderAt[stor7[address(arg1)]]) = address(holderAt[holderAt.length])
        stor7[address(stor8[stor8.length])] = stor7[address(arg1)]
        holderAt.length--
        if holderAt.length > holderAt.length - 1:
            idx = holderAt.length - 1
            while holderAt.length > idx:
                uint256(holderAt[idx]) = 0
                idx = idx + 1
                continue 
        stor7[address(arg1)] = 0
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
