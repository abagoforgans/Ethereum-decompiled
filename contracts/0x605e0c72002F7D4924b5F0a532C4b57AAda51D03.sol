contract main {




// =====================  Runtime code  =====================


const name = 'FFC'

const decimals = 18

const symbol = 'FFC'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
array of struct lockListLen;
mapping of uint8 stor5;

function totalSupply() {
    return totalSupply
}

function canUseLock() {
    return bool(stor5[msg.sender])
}

function getLockListLen(address arg1) {
    return lockListLen[address(arg1)].field_0
}

function paused() {
    return bool(stor3)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor3
    stor3 = 0
    emit Unpause()
    return 1
}

function pause() {
    require msg.sender == owner
    require not stor3
    stor3 = 1
    emit Pause()
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setLockAdmin(address arg1, bool arg2) {
    require msg.sender == owner
    require arg2 != bool(stor5[address(arg1)])
    stor5[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getLockByIdx(address arg1, uint32 arg2) {
    if arg2 >= lockListLen[address(arg1)].field_0:
        return 0
    require arg2 < lockListLen[address(arg1)].field_0
    require arg2 < lockListLen[address(arg1)].field_0
    return lockListLen[address(arg1)][2 * uint32(arg2)].field_0, lockListLen[address(arg1)][2 * uint32(arg2)].field_256
}

function getLockAmount(address arg1) {
    idx = 0
    s = 0
    while uint32(idx) < lockListLen[address(arg1)].field_0:
        require uint32(idx) < lockListLen[address(arg1)].field_0
        if lockListLen[address(arg1)][2 * uint32(idx)].field_256 <= block.timestamp:
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = s
            continue 
        require uint32(idx) < lockListLen[address(arg1)].field_0
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = s + lockListLen[address(arg1)][2 * uint32(idx)].field_0
        continue 
    return s
}

function transfer(address arg1, uint256 arg2) {
    require not stor3
    idx = 0
    s = 0
    while uint32(idx) < lockListLen[address(msg.sender)].field_0:
        require uint32(idx) < lockListLen[address(msg.sender)].field_0
        if lockListLen[address(msg.sender)][2 * uint32(idx)].field_256 <= block.timestamp:
            mem[0] = msg.sender
            mem[32] = 4
            idx = idx + 1
            s = s
            continue 
        require uint32(idx) < lockListLen[address(msg.sender)].field_0
        mem[0] = msg.sender
        mem[32] = 4
        idx = idx + 1
        s = s + lockListLen[address(msg.sender)][2 * uint32(idx)].field_0
        continue 
    require s <= balanceOf[msg.sender]
    require balanceOf[msg.sender] - s >= arg2
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor3
    idx = 0
    s = 0
    while uint32(idx) < lockListLen[address(msg.sender)].field_0:
        require uint32(idx) < lockListLen[address(msg.sender)].field_0
        if lockListLen[address(msg.sender)][2 * uint32(idx)].field_256 <= block.timestamp:
            mem[0] = msg.sender
            mem[32] = 4
            idx = idx + 1
            s = s
            continue 
        require uint32(idx) < lockListLen[address(msg.sender)].field_0
        mem[0] = msg.sender
        mem[32] = 4
        idx = idx + 1
        s = s + lockListLen[address(msg.sender)][2 * uint32(idx)].field_0
        continue 
    require s <= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] - s >= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferWithLock(address arg1, uint256 arg2, uint32 arg3) {
    require not stor3
    require 1 == bool(stor5[msg.sender])
    require arg3 > block.timestamp
    require not stor3
    idx = 0
    s = 0
    while uint32(idx) < lockListLen[address(msg.sender)].field_0:
        require uint32(idx) < lockListLen[address(msg.sender)].field_0
        if lockListLen[address(msg.sender)][2 * uint32(idx)].field_256 <= block.timestamp:
            mem[0] = msg.sender
            mem[32] = 4
            idx = idx + 1
            s = s
            continue 
        require uint32(idx) < lockListLen[address(msg.sender)].field_0
        mem[0] = msg.sender
        mem[32] = 4
        idx = idx + 1
        s = s + lockListLen[address(msg.sender)][2 * uint32(idx)].field_0
        continue 
    require s <= balanceOf[msg.sender]
    require balanceOf[msg.sender] - s >= arg2
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    idx = 0
    while uint32(idx) < lockListLen[address(arg1)].field_0:
        require uint32(idx) < lockListLen[address(arg1)].field_0
        if lockListLen[address(arg1)][2 * uint32(idx)].field_256 >= block.timestamp:
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            continue 
        require uint32(idx) < lockListLen[address(arg1)].field_0
        lockListLen[address(arg1)][2 * uint32(idx)].field_256 = arg3
        require uint32(idx) < lockListLen[address(arg1)].field_0
        lockListLen[address(arg1)][2 * uint32(idx)].field_0 = arg2
        emit TransferWithLockEvt(arg2, arg3, msg.sender, arg1);
    lockListLen[address(arg1)].field_0++
    if lockListLen[address(arg1)].field_0 > lockListLen[address(arg1)].field_0 + 1:
        idx = 2 * lockListLen[address(arg1)].field_0 + 1
        while 2 * lockListLen[address(arg1)].field_0 > idx:
            lockListLen[address(arg1)][idx].field_0 = 0
            lockListLen[address(arg1)][idx].field_256 = 0
            idx = idx + 2
            continue 
    require lockListLen[address(arg1)].field_0 - 1 < lockListLen[address(arg1)].field_0
    lockListLen[address(arg1)][lockListLen[address(arg1)].field_0 - 1].field_256 = arg3
    require lockListLen[address(arg1)].field_0 - 1 < lockListLen[address(arg1)].field_0
    lockListLen[address(arg1)][lockListLen[address(arg1)].field_0 - 1].field_0 = arg2
    emit TransferWithLockEvt(arg2, arg3, msg.sender, arg1);
}



}
