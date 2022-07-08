contract main {




// =====================  Runtime code  =====================


const name = 'Fundament Token 1'

const decimals = 18

const symbol = 'FND'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor3;
array of address stor4;
address owner;
mapping of uint8 stor6;
array of address stor7;
mapping of uint8 stor8;
array of address stor9;

function totalSupply() {
    return totalSupply
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor8[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor3[address(arg1)])
}

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor6[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function renounceMinter() {
    require msg.sender
    require stor3[address(msg.sender)]
    stor3[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function renounceWhitelisted() {
    require msg.sender
    require stor8[address(msg.sender)]
    stor8[address(msg.sender)] = 0
    emit WhitelistedRemoved(msg.sender);
}

function renounceWhitelistAdmin() {
    require msg.sender
    require stor6[address(msg.sender)]
    stor6[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor3[address(msg.sender)]
    require arg1
    require not stor3[address(arg1)]
    stor3[address(arg1)] = 1
    stor4.length++
    stor4[stor4.length] = arg1
    emit MinterAdded(arg1);
}

function removeWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor6[address(msg.sender)]:
        revert with 0, 'Only Whitelist Admin'
    require arg1
    require stor8[address(arg1)]
    stor8[address(arg1)] = 0
    emit WhitelistedRemoved(arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function addWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor6[address(msg.sender)]:
        revert with 0, 'Only Whitelist Admin'
    require arg1
    require not stor8[address(arg1)]
    stor8[address(arg1)] = 1
    stor9.length++
    stor9[stor9.length] = arg1
    emit WhitelistedAdded(arg1);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor3[address(msg.sender)]
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    stor7.length++
    address(stor7[stor7.length]) = arg1
    emit WhitelistAdminAdded(arg1);
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor6[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'Only Whitelist Admin or Owner'
    if stor7.length >= 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not more than 20 admins are allowed'
    require arg1
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    stor7.length++
    address(stor7[stor7.length]) = arg1
    emit WhitelistAdminAdded(arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    if not stor8[address(arg1)]:
        revert with 0, 'only for whitelisted'
    require msg.sender
    if not stor8[address(msg.sender)]:
        revert with 0, 'only for whitelisted'
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function resetWhitelist() {
    require msg.sender == owner
    require owner
    require stor6[stor5]
    idx = 0
    while idx < stor7.length:
        mem[0] = address(stor7[idx])
        mem[32] = 6
        stor6[address(stor7[idx])] = 0
        idx = idx + 1
        continue 
    stor7.length = 0
    if stor7.length > 0:
        idx = 0
        while stor7.length > idx:
            uint256(stor7[idx]) = 0
            idx = idx + 1
            continue 
    require owner
    require not stor6[stor5]
    stor6[stor5] = 1
    stor7.length++
    address(stor7[stor7.length]) = owner
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2
    if not stor8[address(arg2)]:
        revert with 0, 'only for whitelisted'
    require arg1
    if not stor8[address(arg1)]:
        revert with 0, 'only for whitelisted'
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}



}
