contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor3;
address stor4;
mapping of uint8 stor5;
uint256 totalSupply;
mapping of uint256 stor7;
mapping of struct balanceOfUnlocked;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function symbol() {
    return symbol[0 len symbol.length]
}

function balanceOfUnlocked(address arg1) {
    return balanceOfUnlocked[address(arg1)].field_256
}

function balanceOfLocked(address arg1) {
    return balanceOfUnlocked[address(arg1)].field_0
}

function kill() {
    if stor4 != msg.sender:
        revert with 0, 'Not a owner'
    selfdestruct(stor4)
}

function _fallback() payable {
    revert
}

function balanceOf(address arg1) {
    return (balanceOfUnlocked[address(arg1)].field_256 + balanceOfUnlocked[address(arg1)].field_0)
}

function ownerMigration(address arg1) {
    if stor4 != msg.sender:
        revert with 0, 'Not a owner'
    stor4 = arg1
    return stor4
}

function allowance(address arg1, address arg2) {
    if arg1 != msg.sender:
        require msg.sender == arg2
    return stor7[address(arg1)][address(arg2)]
}

function addBlackList(address arg1) {
    if stor4 != msg.sender:
        revert with 0, 'Not a owner'
    if stor5[address(arg1)]:
        revert with 0, 'Already, sender in blacklist'
    stor5[address(arg1)] = 1
}

function removalBlackList(address arg1) {
    if stor4 != msg.sender:
        revert with 0, 'Not a owner'
    if not stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sender does not included in blacklist'
    stor5[address(arg1)] = 0
}

function tokenIssue(uint256 arg1) {
    if stor4 != msg.sender:
        revert with 0, 'Not a owner'
    if totalSupply > totalSupply + arg1:
        revert with 0, 'Overflow'
    totalSupply += arg1
    balanceOfUnlocked[stor4].field_256 += arg1
    emit ChangeNumberofToken(totalSupply, totalSupply);
    return 1
}

function tokenBurn(uint256 arg1) {
    if stor4 != msg.sender:
        revert with 0, 'Not a owner'
    if arg1 > balanceOfUnlocked[stor4].field_256:
        revert with 0, 'Unsufficient balance'
    totalSupply -= arg1
    balanceOfUnlocked[stor4].field_256 -= arg1
    emit ChangeNumberofToken(totalSupply, totalSupply);
    return 1
}

function unlockBalance(address arg1, uint256 arg2) {
    if stor4 != msg.sender:
        revert with 0, 'Not a owner'
    if arg2 > balanceOfUnlocked[address(arg1)].field_0:
        revert with 0, 'Unsufficient balance'
    balanceOfUnlocked[address(arg1)].field_0 -= arg2
    balanceOfUnlocked[address(arg1)].field_256 += arg2
    require balanceOfUnlocked[address(arg1)].field_0 + balanceOfUnlocked[address(arg1)].field_256 == balanceOfUnlocked[address(arg1)].field_0 + balanceOfUnlocked[address(arg1)].field_256
}

function lockBalance(address arg1, uint256 arg2) {
    if stor4 != msg.sender:
        revert with 0, 'Not a owner'
    if arg2 > balanceOfUnlocked[address(arg1)].field_256:
        revert with 0, 'Unsufficient balance'
    balanceOfUnlocked[address(arg1)].field_256 -= arg2
    balanceOfUnlocked[address(arg1)].field_0 += arg2
    require balanceOfUnlocked[address(arg1)].field_0 + balanceOfUnlocked[address(arg1)].field_256 == balanceOfUnlocked[address(arg1)].field_0 + balanceOfUnlocked[address(arg1)].field_256
}

function decreaseApproval(address arg1, uint256 arg2) {
    if not arg1:
        revert with 0, 'Address is wrong'
    if stor7[address(msg.sender)][address(arg1)] <= 0:
        revert with 0, 'Not approved until yet'
    if stor5[address(msg.sender)]:
        revert with 0, 'Sender in blacklist'
    if stor5[address(arg1)]:
        revert with 0, 'Receiver in blacklist'
    if arg2 <= stor7[address(msg.sender)][address(arg1)]:
        stor7[address(msg.sender)][address(arg1)] -= arg2
    else:
        stor7[address(msg.sender)][address(arg1)] = 0
    emit Approval(stor7[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    if msg.sender == stor4:
        revert with 0, 'Owner uses the privateTransfer'
    if not arg1:
        revert with 0, 'Address is wrong'
    if arg2 > balanceOfUnlocked[address(msg.sender)].field_256:
        revert with 0, 'Unsufficient balance'
    if stor5[address(msg.sender)]:
        revert with 0, 'Sender in blacklist'
    if stor5[address(arg1)]:
        revert with 0, 'Receiver in blacklist'
    if stor7[address(msg.sender)][address(arg1)]:
        revert with 0, 'Already allowed token exists'
    stor7[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    if not arg1:
        revert with 0, 'Address is wrong'
    if stor7[address(msg.sender)][address(arg1)] <= 0:
        revert with 0, 'Not approved until yet'
    if stor5[address(msg.sender)]:
        revert with 0, 'Sender in blacklist'
    if stor5[address(arg1)]:
        revert with 0, 'Receiver in blacklist'
    if arg2 + stor7[address(msg.sender)][address(arg1)] > balanceOfUnlocked[address(msg.sender)].field_256:
        revert with 0, 'Unsufficient balance'
    stor7[address(msg.sender)][address(arg1)] += arg2
    emit Approval(stor7[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function privateTransfer(address arg1, uint256 arg2) {
    if stor4 != msg.sender:
        revert with 0, 'Not a owner'
    if not arg1:
        revert with 0, 'Address is wrong'
    if arg2 > balanceOfUnlocked[stor4].field_256:
        revert with 0, 'Unsufficient balance'
    if balanceOfUnlocked[address(arg1)].field_256 > balanceOfUnlocked[address(arg1)].field_256 + arg2:
        revert with 0, 'Overflow'
    balanceOfUnlocked[stor4].field_256 -= arg2
    balanceOfUnlocked[address(arg1)].field_0 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOfUnlocked[stor4].field_256 + balanceOfUnlocked[address(arg1)].field_0 == balanceOfUnlocked[stor4].field_256 + balanceOfUnlocked[address(arg1)].field_0
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not msg.sender:
        revert with 0, 'Address is wrong'
    if msg.sender == stor4:
        revert with 0, 'Owner uses the privateTransfer'
    if not arg1:
        revert with 0, 'Address is wrong'
    if stor5[address(msg.sender)]:
        revert with 0, 'Sender in blacklist'
    if stor5[address(arg1)]:
        revert with 0, 'Receiver in blacklist'
    if arg2 > balanceOfUnlocked[address(msg.sender)].field_256:
        revert with 0, 'Unsufficient balance'
    if balanceOfUnlocked[address(arg1)].field_256 > balanceOfUnlocked[address(arg1)].field_256 + arg2:
        revert with 0, 'Overflow'
    balanceOfUnlocked[address(msg.sender)].field_256 -= arg2
    balanceOfUnlocked[address(arg1)].field_256 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOfUnlocked[address(msg.sender)].field_256 + balanceOfUnlocked[address(arg1)].field_256 == balanceOfUnlocked[address(msg.sender)].field_256 + balanceOfUnlocked[address(arg1)].field_256
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor7[address(arg1)][address(msg.sender)] > balanceOfUnlocked[address(arg1)].field_256:
        revert with 0, 'Unsufficient allowed balance'
    if arg3 > stor7[address(arg1)][address(msg.sender)]:
        revert with 0, 'Unsufficient balance'
    stor7[address(arg1)][address(msg.sender)] -= arg3
    if not arg1:
        revert with 0, 'Address is wrong'
    if arg1 == stor4:
        revert with 0, 'Owner uses the privateTransfer'
    if not arg2:
        revert with 0, 'Address is wrong'
    if stor5[address(arg1)]:
        revert with 0, 'Sender in blacklist'
    if stor5[address(arg2)]:
        revert with 0, 'Receiver in blacklist'
    if arg3 > balanceOfUnlocked[address(arg1)].field_256:
        revert with 0, 'Unsufficient balance'
    if balanceOfUnlocked[address(arg2)].field_256 > balanceOfUnlocked[address(arg2)].field_256 + arg3:
        revert with 0, 'Overflow'
    balanceOfUnlocked[address(arg1)].field_256 -= arg3
    balanceOfUnlocked[address(arg2)].field_256 += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOfUnlocked[address(arg1)].field_256 + balanceOfUnlocked[address(arg2)].field_256 == balanceOfUnlocked[address(arg1)].field_256 + balanceOfUnlocked[address(arg2)].field_256
    return 1
}

function multipleTransfer(address[] arg1, uint256 arg2, uint256 arg3) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if stor4 != msg.sender:
        revert with 0, 'Not a owner'
    if arg1.length != arg2:
        revert with 0, 'Number of users who receives the token is not match'
    if arg3 >= 100 * 10^6 * stor3:
        revert with 0, 'Too high submit balance'
    if arg2 >= 256:
        revert with 0, 'Two high number of users'
    if arg2 * arg3 > balanceOfUnlocked[stor4].field_256:
        revert with 0, 'Unsufficient balance'
    balanceOfUnlocked[stor4].field_256 += -1 * arg2 * arg3
    idx = 0
    while uint8(idx) < arg2:
        require uint8(idx) < arg1.length
        if balanceOfUnlocked[mem[(32 * uint8(idx)) + 140 len 20]].field_256:
            revert with 0, 'Already user has token'
        require uint8(idx) < arg1.length
        require mem[(32 * uint8(idx)) + 140 len 20]
        require uint8(idx) < arg1.length
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 8
        balanceOfUnlocked[mem[(32 * uint8(idx)) + 140 len 20]].field_256 = arg3
        require uint8(idx) < arg1.length
        _44 = mem[(32 * uint8(idx)) + 128]
        mem[(32 * arg1.length) + 128] = arg3
        emit Transfer(arg3, stor4, address(_44));
        idx = idx + 1
        continue 
    return 1
}



}
