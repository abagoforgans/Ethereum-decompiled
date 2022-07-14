contract main {




// =====================  Runtime code  =====================


const name = 'EduCoin'

const decimals = 18

const initialSupply = 10000000000 * 10^18

const symbol = 'EC'

const currentTime = block.timestamp


mapping of uint256 stor0;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
mapping of uint8 stor4;
array of struct lockState;

function totalSupply() payable {
    return totalSupply
}

function lockState(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < lockState[address(arg1)].field_0
    require arg2 < lockState[address(arg1)].field_0
    return lockState[address(arg1)][arg2].field_0, lockState[address(arg1)][arg2].field_256
}

function paused() payable {
    return bool(uint8(stor3.field_160))
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function lockCount(address arg1) payable {
    require calldata.size - 4 >= 32
    return lockState[address(arg1)].field_0
}

function isFrozen(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function _fallback() payable {
    revert
}

function afterTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return (block.timestamp + arg1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    emit OwnershipRenounced(owner);
    owner = 0
}

function freeze(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    stor4[address(arg1)] = 1
    emit Frozen(arg1);
}

function unfreeze(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    stor4[address(arg1)] = 0
    emit Unfrozen(arg1);
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if uint8(stor3.field_160):
        revert with 0, 'Paused by owner'
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not uint8(stor3.field_160):
        revert with 0, 'Not paused now'
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor4[address(msg.sender)]:
        revert with 0, 'Sender account is locked.'
    if uint8(stor3.field_160):
        revert with 0, 'Paused by owner'
    # nil
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0, 'Already owner'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor3.field_160):
        revert with 0, 'Paused by owner'
    if stor4[address(arg1)]:
        revert with 0, 'From account is locked.'
    # nil
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not owner'
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require stor0[address(arg1)] + arg2 >= stor0[address(arg1)]
    stor0[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    emit Mint(arg2, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if arg2 > stor0[address(arg1)]:
        revert with 0, 'Balance is too small.'
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= stor0[address(arg1)]
    stor0[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    emit Burn(arg2, arg1);
}

function lock(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if stor0[address(arg1)] < arg2:
        revert with 0, 'Balance is too small.'
    require arg2 <= stor0[address(arg1)]
    stor0[address(arg1)] -= arg2
    lockState[address(arg1)].field_0++
    lockState[address(arg1)][lockState[address(arg1)].field_0].field_0 = arg3
    lockState[address(arg1)][lockState[address(arg1)].field_0].field_256 = arg2
    emit Lock(arg2, arg3, arg1);
}

function lockAfter(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if stor0[address(arg1)] < arg2:
        revert with 0, 'Balance is too small.'
    require arg2 <= stor0[address(arg1)]
    stor0[address(arg1)] -= arg2
    lockState[address(arg1)].field_0++
    lockState[address(arg1)][lockState[address(arg1)].field_0].field_0 = block.timestamp + arg3
    lockState[address(arg1)][lockState[address(arg1)].field_0].field_256 = arg2
    emit Lock(arg2, block.timestamp + arg3, arg1);
}

function transferWithLock(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0, 'wrong address'
    if arg2 > stor0[address(stor3.field_0)]:
        revert with 0, 'Not enough balance'
    require arg2 <= stor0[address(stor3.field_0)]
    stor0[address(stor3.field_0)] -= arg2
    lockState[address(arg1)].field_0++
    lockState[address(arg1)][lockState[address(arg1)].field_0].field_0 = arg3
    lockState[address(arg1)][lockState[address(arg1)].field_0].field_256 = arg2
    emit Transfer(arg2, owner, arg1);
    emit Lock(arg2, arg3, arg1);
    return 1
}

function transferWithLockAfter(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0, 'wrong address'
    if arg2 > stor0[address(stor3.field_0)]:
        revert with 0, 'Not enough balance'
    require arg2 <= stor0[address(stor3.field_0)]
    stor0[address(stor3.field_0)] -= arg2
    lockState[address(arg1)].field_0++
    lockState[address(arg1)][lockState[address(arg1)].field_0].field_0 = block.timestamp + arg3
    lockState[address(arg1)][lockState[address(arg1)].field_0].field_256 = arg2
    emit Transfer(arg2, owner, arg1);
    emit Lock(arg2, block.timestamp + arg3, arg1);
    return 1
}

function unlock(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if arg2 >= lockState[address(arg1)].field_0:
        revert with 0, 'No lock information.'
    require arg2 < lockState[address(arg1)].field_0
    require stor0[address(arg1)] + lockState[address(arg1)][arg2].field_256 >= stor0[address(arg1)]
    stor0[address(arg1)] += lockState[address(arg1)][arg2].field_256
    require arg2 < lockState[address(arg1)].field_0
    emit Unlock(lockState[address(arg1)][arg2].field_256, arg1);
    require arg2 < lockState[address(arg1)].field_0
    lockState[address(arg1)][arg2].field_256 = 0
    if arg2 != lockState[address(arg1)].field_0 - 1:
        require lockState[address(arg1)].field_0 - 1 < lockState[address(arg1)].field_0
        require arg2 < lockState[address(arg1)].field_0
        lockState[address(arg1)][arg2].field_0 = lockState[address(arg1)][lockState[address(arg1)].field_0 - 1].field_0
        lockState[address(arg1)][arg2].field_256 = lockState[address(arg1)][lockState[address(arg1)].field_0 - 1].field_256
    lockState[address(arg1)].field_0--
    if lockState[address(arg1)].field_0 > lockState[address(arg1)].field_0 - 1:
        idx = 2 * lockState[address(arg1)].field_0 - 1
        while 2 * lockState[address(arg1)].field_0 > idx:
            lockState[address(arg1)][idx].field_0 = 0
            lockState[address(arg1)][idx].field_256 = 0
            idx = idx + 2
            continue 
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < lockState[address(arg1)].field_0:
        require idx < lockState[address(arg1)].field_0
        require s + lockState[address(arg1)][idx].field_256 >= s
        mem[0] = arg1
        mem[32] = 5
        idx = idx + 1
        s = s + lockState[address(arg1)][idx].field_256
        continue 
    require stor0[address(arg1)] + (s * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0) >= stor0[address(arg1)]
    return (stor0[address(arg1)] + (s * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0 * lockState[address(arg1)].field_0))
}



}
