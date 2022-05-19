contract main {




// =====================  Runtime code  =====================


const name = 'THORToken'

const symbol = 'THT'


uint256 stor0;
array of address sub_74fb4ef2;
uint8 stor6;
mapping of uint256 allowance;
mapping of uint256 balances;
uint256 totalSupply;
uint8 decimals;
uint256 INITIAL_SUPPLY;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function paused() {
    return bool(stor6)
}

function balanceOf(address arg1) {
    require not stor6
    return balances[address(arg1)]
}

function sub_74fb4ef2(?) {
    s = 0
    idx = 0
    while idx < 5:
        if sub_74fb4ef2[idx] != msg.sender:
            s = s
            idx = idx + 1
            continue 
        s = 1
        idx = idx + 1
        continue 
    require s
    require 5 > arg1
    require 0 <= arg1
    if arg1 < 5:
        return sub_74fb4ef2[arg1]
    revert
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function kill() {
    s = 0
    idx = 0
    while idx < 5:
        if sub_74fb4ef2[idx] != msg.sender:
            s = s
            idx = idx + 1
            continue 
        s = 1
        idx = idx + 1
        continue 
    require s
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require not stor6
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function unpause() {
    s = 0
    idx = 0
    while idx < 5:
        if sub_74fb4ef2[idx] != msg.sender:
            s = s
            idx = idx + 1
            continue 
        s = 1
        idx = idx + 1
        continue 
    require s
    require stor6
    stor6 = 0
}

function pause() {
    s = 0
    idx = 0
    while idx < 5:
        if sub_74fb4ef2[idx] != msg.sender:
            s = s
            idx = idx + 1
            continue 
        s = 1
        idx = idx + 1
        continue 
    require s
    require not stor6
    stor6 = 1
}

function burn(uint256 arg1) {
    require not stor6
    require arg1 <= balances[address(msg.sender)]
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor6
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor6
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function addOwner(address arg1) {
    s = 0
    idx = 0
    while idx < 5:
        if sub_74fb4ef2[idx] != msg.sender:
            s = s
            idx = idx + 1
            continue 
        s = 1
        idx = idx + 1
        continue 
    require s
    require 5 > stor0
    require stor0 < 5
    sub_74fb4ef2[stor0] = arg1
    stor0++
    emit AddOwner(arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require not stor6
    require arg1
    require arg2 <= balances[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require not stor6
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= balances[address(arg1)]
    require arg2 <= balances[address(arg1)]
    balances[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
}

function mint(address arg1, uint256 arg2) {
    s = 0
    idx = 0
    while idx < 5:
        if sub_74fb4ef2[idx] != msg.sender:
            s = s
            idx = idx + 1
            continue 
        s = 1
        idx = idx + 1
        continue 
    require s
    require not stor6
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 68
    require not stor6
    require arg2
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferOwnership(address arg1) {
    s = 0
    idx = 0
    while idx < 5:
        if sub_74fb4ef2[idx] != msg.sender:
            s = s
            idx = idx + 1
            continue 
        s = 1
        idx = idx + 1
        continue 
    require s
    require arg1
    idx = 0
    while idx < stor0:
        require idx < 5
        if sub_74fb4ef2[idx] != msg.sender:
            idx = idx + 1
            continue 
        require idx < 5
        sub_74fb4ef2[idx] = arg1
        emit OwnershipTransferred(sub_74fb4ef2[idx], arg1);
    require stor0 < 5
    emit OwnershipTransferred(sub_74fb4ef2[stor0], arg1);
}



}
